import 'package:back_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class UsersEndpoint extends Endpoint {
  //
  Future<bool> onCreate({
    required String name,
    required String urlFoto,
    required String password,
    required Session session,
  }) async {
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
}
