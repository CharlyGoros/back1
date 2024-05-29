/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:back_client/src/protocol/users.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointUsers extends _i1.EndpointRef {
  EndpointUsers(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'users';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'users',
        'hello',
        {'name': name},
      );

  _i2.Future<bool> onCreate(
    String name,
    String urlFoto,
    String password,
  ) =>
      caller.callServerEndpoint<bool>(
        'users',
        'onCreate',
        {
          'name': name,
          'urlFoto': urlFoto,
          'password': password,
        },
      );

  _i2.Future<List<_i3.Users>> readUsers() =>
      caller.callServerEndpoint<List<_i3.Users>>(
        'users',
        'readUsers',
        {},
      );

  _i2.Future<_i3.Users?> findUser(int id) =>
      caller.callServerEndpoint<_i3.Users?>(
        'users',
        'findUser',
        {'id': id},
      );

  _i2.Future<bool> updateUser(
    int id,
    String nombre,
  ) =>
      caller.callServerEndpoint<bool>(
        'users',
        'updateUser',
        {
          'id': id,
          'nombre': nombre,
        },
      );

  _i2.Future<bool> deleteUser(int id) => caller.callServerEndpoint<bool>(
        'users',
        'deleteUser',
        {'id': id},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    example = EndpointExample(this);
    users = EndpointUsers(this);
  }

  late final EndpointExample example;

  late final EndpointUsers users;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'users': users,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
