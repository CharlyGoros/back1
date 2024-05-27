/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Users extends _i1.TableRow {
  Users._({
    int? id,
    required this.name,
    required this.urlFoto,
    required this.descr,
  }) : super(id);

  factory Users({
    int? id,
    required String name,
    required String urlFoto,
    required String descr,
  }) = _UsersImpl;

  factory Users.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Users(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      urlFoto: serializationManager
          .deserialize<String>(jsonSerialization['urlFoto']),
      descr:
          serializationManager.deserialize<String>(jsonSerialization['descr']),
    );
  }

  static final t = UsersTable();

  static const db = UsersRepository._();

  String name;

  String urlFoto;

  String descr;

  @override
  _i1.Table get table => t;

  Users copyWith({
    int? id,
    String? name,
    String? urlFoto,
    String? descr,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'urlFoto': urlFoto,
      'descr': descr,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'urlFoto': urlFoto,
      'descr': descr,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'urlFoto': urlFoto,
      'descr': descr,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'urlFoto':
        urlFoto = value;
        return;
      case 'descr':
        descr = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Users>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Users>(
      where: where != null ? where(Users.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Users?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Users>(
      where: where != null ? where(Users.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Users?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Users>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UsersTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Users>(
      where: where(Users.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Users>(
      where: where != null ? where(Users.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UsersInclude include() {
    return UsersInclude._();
  }

  static UsersIncludeList includeList({
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    UsersInclude? include,
  }) {
    return UsersIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Users.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Users.t),
      include: include,
    );
  }
}

class _Undefined {}

class _UsersImpl extends Users {
  _UsersImpl({
    int? id,
    required String name,
    required String urlFoto,
    required String descr,
  }) : super._(
          id: id,
          name: name,
          urlFoto: urlFoto,
          descr: descr,
        );

  @override
  Users copyWith({
    Object? id = _Undefined,
    String? name,
    String? urlFoto,
    String? descr,
  }) {
    return Users(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      urlFoto: urlFoto ?? this.urlFoto,
      descr: descr ?? this.descr,
    );
  }
}

class UsersTable extends _i1.Table {
  UsersTable({super.tableRelation}) : super(tableName: 'users') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    urlFoto = _i1.ColumnString(
      'urlFoto',
      this,
    );
    descr = _i1.ColumnString(
      'descr',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString urlFoto;

  late final _i1.ColumnString descr;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        urlFoto,
        descr,
      ];
}

@Deprecated('Use UsersTable.t instead.')
UsersTable tUsers = UsersTable();

class UsersInclude extends _i1.IncludeObject {
  UsersInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Users.t;
}

class UsersIncludeList extends _i1.IncludeList {
  UsersIncludeList._({
    _i1.WhereExpressionBuilder<UsersTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Users.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Users.t;
}

class UsersRepository {
  const UsersRepository._();

  Future<List<Users>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Users>(
      where: where?.call(Users.t),
      orderBy: orderBy?.call(Users.t),
      orderByList: orderByList?.call(Users.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Users?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? offset,
    _i1.OrderByBuilder<UsersTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UsersTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Users>(
      where: where?.call(Users.t),
      orderBy: orderBy?.call(Users.t),
      orderByList: orderByList?.call(Users.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Users?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Users>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Users>> insert(
    _i1.Session session,
    List<Users> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Users>(
      rows,
      transaction: transaction,
    );
  }

  Future<Users> insertRow(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Users>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Users>> update(
    _i1.Session session,
    List<Users> rows, {
    _i1.ColumnSelections<UsersTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Users>(
      rows,
      columns: columns?.call(Users.t),
      transaction: transaction,
    );
  }

  Future<Users> updateRow(
    _i1.Session session,
    Users row, {
    _i1.ColumnSelections<UsersTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Users>(
      row,
      columns: columns?.call(Users.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Users> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Users>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Users row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Users>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UsersTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Users>(
      where: where(Users.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UsersTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Users>(
      where: where?.call(Users.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
