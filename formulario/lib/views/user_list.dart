import 'package:flutter/material.dart';
import 'package:formulario/componets/user_tale.dart';
import 'package:formulario/provider/users.dart';
import 'package:provider/provider.dart';
import '../modeis/user.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                users.put(User('id', 'Teste', 'email@teste.com', ''));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
