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

  Future<List<Users>> readUsers(
    Session session,
  ) async {
    try {
      final users = await Users.db.find(session);
      return users;
    } catch (e) {
      return [];
    }
  }

//para uypodate user tengo q buscarlo primero
//luego actualizarlo
//luego, retornar si se pudo o no updatear (trycatch)
//

  Future<Users?> findUser(
    Session session,
    int id,
  ) async {
    try {
      final user = await Users.db.findById(
        session,
        id,
      );
      return user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<bool> updateUser(
    Session session,
    int id,
    String nombre,
  ) async {
    try {
      final user = await Users.db.findById(
        session,
        id,
      );
      if (user == null) {
        return false;
      }
      final usuarioAEditar = Users(
        id: user.id,
        urlFoto: user.urlFoto,
        descr: user.descr,
        name: nombre,
      );
      await Users.db.updateRow(session, usuarioAEditar);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteUser(
    Session session,
    int id,
  ) async {
    try {
      final user = await Users.db.findById(
        session,
        id,
      );
      if (user == null) {
        return false;
      }

      await Users.db.deleteRow(session, user);
      return true;
    } catch (e) {
      return false;
    }
  }
}
