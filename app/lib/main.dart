import 'package:app_compras/auth/user.dart';
import 'package:app_compras/database/database.dart';
import 'package:app_compras/estoque/cubit/estoque_cubit.dart';
import 'package:app_compras/estoque/repositories/estoque_repository.dart';
import 'package:app_compras/lista-de-compras/cubit/lista_de_compras_cubit.dart';
import 'package:app_compras/lista-de-compras/repositories/lista_de_compras_repository.dart';
import 'package:app_compras/nfce/cubit/nfces_cubit.dart';
import 'package:app_compras/nfce/repositories/nfce_repository.dart';
import 'package:app_compras/auth/pages/auth_page.dart';
import 'package:app_compras/home/simple_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = AppDatabase();

  final blocProviders = [
    BlocProvider<ListaDeComprasCubit>(
      create: (_) => ListaDeComprasCubit(ListaDeComprasRepository(database)),
    ),
    BlocProvider<NfcesCubit>(
      create: (_) => NfcesCubit(NfceRepository(database)),
    ),
    BlocProvider<EstoqueCubit>(
      create: (_) => EstoqueCubit(EstoqueRepository(database)),
    ),
  ];

  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://a98579a762b0b387c2c9a8a2eadff2b8@o4505966368063488.ingest.us.sentry.io/4508093123264512';
      // Set tracesSampleRate to 1.0 to capture 100% of transactions for tracing.
      // We recommend adjusting this value in production.
      options.tracesSampleRate = 1.0;
      // The sampling rate for profiling is relative to tracesSampleRate
      // Setting to 1.0 will profile 100% of sampled transactions:
      options.profilesSampleRate = 1.0;
    },
    appRunner: () => runApp(ChangeNotifierProvider(
      create: (context) => User(),
      child: MultiBlocProvider(
        providers: blocProviders,
        child: const MyApp(),
      ),
    )),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Compras inteligentes',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 92, 161, 13),
          brightness: Brightness.light,
        ),
      ),
      home: Consumer<User>(
        builder: (context, value, child) {
          return value.isAuthenticated
              ? const SimpleHomePage(title: "Compras inteligentes")
              : const AuthPage();
        },
      ),
    );
  }
}
