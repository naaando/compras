// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ProdutoTableTable extends ProdutoTable
    with TableInfo<$ProdutoTableTable, ProdutoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProdutoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'produto_table';
  @override
  VerificationContext validateIntegrity(Insertable<ProdutoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProdutoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProdutoTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $ProdutoTableTable createAlias(String alias) {
    return $ProdutoTableTable(attachedDatabase, alias);
  }
}

class ProdutoTableData extends DataClass
    implements Insertable<ProdutoTableData> {
  final int id;
  final String name;
  const ProdutoTableData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  ProdutoTableCompanion toCompanion(bool nullToAbsent) {
    return ProdutoTableCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory ProdutoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProdutoTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  ProdutoTableData copyWith({int? id, String? name}) => ProdutoTableData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  ProdutoTableData copyWithCompanion(ProdutoTableCompanion data) {
    return ProdutoTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProdutoTableData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProdutoTableData &&
          other.id == this.id &&
          other.name == this.name);
}

class ProdutoTableCompanion extends UpdateCompanion<ProdutoTableData> {
  final Value<int> id;
  final Value<String> name;
  const ProdutoTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ProdutoTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<ProdutoTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  ProdutoTableCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return ProdutoTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutoTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $EstoqueTableTable extends EstoqueTable
    with TableInfo<$EstoqueTableTable, EstoqueTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EstoqueTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'estoque_table';
  @override
  VerificationContext validateIntegrity(Insertable<EstoqueTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EstoqueTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EstoqueTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $EstoqueTableTable createAlias(String alias) {
    return $EstoqueTableTable(attachedDatabase, alias);
  }
}

class EstoqueTableData extends DataClass
    implements Insertable<EstoqueTableData> {
  final int id;
  final String name;
  const EstoqueTableData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  EstoqueTableCompanion toCompanion(bool nullToAbsent) {
    return EstoqueTableCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory EstoqueTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EstoqueTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  EstoqueTableData copyWith({int? id, String? name}) => EstoqueTableData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  EstoqueTableData copyWithCompanion(EstoqueTableCompanion data) {
    return EstoqueTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EstoqueTableData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EstoqueTableData &&
          other.id == this.id &&
          other.name == this.name);
}

class EstoqueTableCompanion extends UpdateCompanion<EstoqueTableData> {
  final Value<int> id;
  final Value<String> name;
  const EstoqueTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  EstoqueTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<EstoqueTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  EstoqueTableCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return EstoqueTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EstoqueTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProdutoTableTable produtoTable = $ProdutoTableTable(this);
  late final $EstoqueTableTable estoqueTable = $EstoqueTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [produtoTable, estoqueTable];
}

typedef $$ProdutoTableTableCreateCompanionBuilder = ProdutoTableCompanion
    Function({
  Value<int> id,
  required String name,
});
typedef $$ProdutoTableTableUpdateCompanionBuilder = ProdutoTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
});

class $$ProdutoTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProdutoTableTable,
    ProdutoTableData,
    $$ProdutoTableTableFilterComposer,
    $$ProdutoTableTableOrderingComposer,
    $$ProdutoTableTableCreateCompanionBuilder,
    $$ProdutoTableTableUpdateCompanionBuilder> {
  $$ProdutoTableTableTableManager(_$AppDatabase db, $ProdutoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ProdutoTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ProdutoTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              ProdutoTableCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              ProdutoTableCompanion.insert(
            id: id,
            name: name,
          ),
        ));
}

class $$ProdutoTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ProdutoTableTable> {
  $$ProdutoTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ProdutoTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ProdutoTableTable> {
  $$ProdutoTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$EstoqueTableTableCreateCompanionBuilder = EstoqueTableCompanion
    Function({
  Value<int> id,
  required String name,
});
typedef $$EstoqueTableTableUpdateCompanionBuilder = EstoqueTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
});

class $$EstoqueTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EstoqueTableTable,
    EstoqueTableData,
    $$EstoqueTableTableFilterComposer,
    $$EstoqueTableTableOrderingComposer,
    $$EstoqueTableTableCreateCompanionBuilder,
    $$EstoqueTableTableUpdateCompanionBuilder> {
  $$EstoqueTableTableTableManager(_$AppDatabase db, $EstoqueTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$EstoqueTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$EstoqueTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              EstoqueTableCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              EstoqueTableCompanion.insert(
            id: id,
            name: name,
          ),
        ));
}

class $$EstoqueTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $EstoqueTableTable> {
  $$EstoqueTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$EstoqueTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $EstoqueTableTable> {
  $$EstoqueTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProdutoTableTableTableManager get produtoTable =>
      $$ProdutoTableTableTableManager(_db, _db.produtoTable);
  $$EstoqueTableTableTableManager get estoqueTable =>
      $$EstoqueTableTableTableManager(_db, _db.estoqueTable);
}
