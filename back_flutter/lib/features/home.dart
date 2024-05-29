import 'package:back_client/back_client.dart';
import 'package:back_flutter/main.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Users> users = [];
  final controllerName = TextEditingController();
  final controllerUrlPhoto = TextEditingController();
  final controllerDesc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: controllerName,
              ),
              TextField(
                controller: controllerDesc,
              ),
              TextField(
                controller: controllerUrlPhoto,
              ),
              ElevatedButton(
                onPressed: () async {
                  final user = await client.users.readUsers();
                  setState(() {
                    users = user;
                  });
                },
                child: const Text('Traer Usuarios'),
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await client.users.onCreate(
                      controllerName.text,
                      controllerUrlPhoto.text,
                      controllerDesc.text,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Usuario creado'),
                    ));
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Error al crear usuario $e'),
                    ));
                  }
                },
                child: const Text('Crear Usuario'),
              ),
              ...users.map((user) => Card(user: user))
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  Card({
    required this.user,
    super.key,
  });
  final Users user;
  final controllerName2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        children: [
          Container(
              height: 200, width: 200, child: Image.network(user.urlFoto)),
          Text(user.name),
          ElevatedButton(
            onPressed: () async {
              if (user.id == null) {
                return;
              }
              await client.users.deleteUser(user.id!);
            },
            child: const Text('Eliminar'),
          ),
          Container(
            width: 200,
            child: TextField(
              controller: controllerName2,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (user.id == null) {
                return;
              }
              await client.users.updateUser(user.id!, controllerName2.text);
            },
            child: const Text('Update'),
          )
        ],
      ),
    );
  }
}
