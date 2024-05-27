import 'package:back_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UsersEndpoint extends Endpoint {
  //
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }

  Future<bool> onCreate(
    Session session,
    String name,
    String urlFoto,
    String password,
  ) async {
    try {
      final user = Users(
        name: name,
        urlFoto: urlFoto,
        descr: password,
      );
      await Users.db.insertRow(session, user);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<Users>> onCreateReadUsers(
    Session session,
  ) async {
    try {
      final users = await Users.db.find(session);
      return users;
    } catch (e) {
      return [];
    }
  }
}
