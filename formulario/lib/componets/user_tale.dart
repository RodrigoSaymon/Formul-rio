import 'package:flutter/material.dart';

import '../modeis/user.dart';
import '../routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avartar = user.avatarUrl == null || user.avatarUrl.isEmpty
        // ignore: prefer_const_constructors
        ? CircleAvatar(child: Icon(Icons.person))
        // ignore: prefer_const_constructors
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avartar,
      title: Text(user.nome),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
              icon: Icon(
                Icons.edit,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
