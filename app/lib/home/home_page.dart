import 'package:app_compras/estoque/pages/estoque_page.dart';
import 'package:app_compras/nfce/pages/nfces_page.dart';
import 'package:app_compras/pages/lista_de_compras_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          _home(context),
          const ListaDeComprasPage(),
          const EstoquePage(),
          const NfcesPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 16,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        // backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Remix.home_2_line),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Remix.shopping_cart_line),
            label: 'Compras',
          ),
          BottomNavigationBarItem(
            icon: Icon(Remix.archive_2_line),
            label: 'Inventário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Remix.receipt_line),
            label: 'Notas fiscais',
          ),
        ],
        onTap: _selectPage,
      ),
    );
  }

  _selectPage(index) {
    _tabController.animateTo(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  _home(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Wrap(
                  children: [
                    Text('R\$ 30'),
                    Icon(Remix.price_tag_3_line),
                  ],
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: BarChart(
                    BarChartData(
                      barGroups: List.generate(7, (i) {
                        return BarChartGroupData(
                          x: i,
                          barRods: [
                            BarChartRodData(
                              toY: i.toDouble() *
                                  10, // Aqui você pode substituir por seus próprios dados
                              color: Colors.blue,
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Card.outlined(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: const Text('Lista de compras'),
              subtitle: const Text('Crie e gerencie suas listas de compras'),
              leading: const Icon(Remix.shopping_cart_line),
              trailing: const Icon(Remix.arrow_right_s_line),
              onTap: () => _selectPage(1),
            ),
          ),
          Card.outlined(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: const Text('Inventário'),
              subtitle: const Text('Gerencie seu estoque de produtos'),
              leading: const Icon(Remix.fridge_line),
              trailing: const Icon(Remix.arrow_right_s_line),
              onTap: () => _selectPage(2),
            ),
          ),
          Card.outlined(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              title: const Text('Notas fiscais'),
              subtitle: const Text('Consulte suas notas fiscais'),
              leading: const Icon(Remix.receipt_line),
              trailing: const Icon(Remix.arrow_right_s_line),
              onTap: () => _selectPage(3),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
