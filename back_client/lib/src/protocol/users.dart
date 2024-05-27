/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Users extends _i1.SerializableEntity {
  Users._({
    this.id,
    required this.name,
    required this.urlFoto,
    required this.descr,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String urlFoto;

  String descr;

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
