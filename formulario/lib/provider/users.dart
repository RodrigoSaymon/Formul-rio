import 'dart:math';
import '../modeis/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:formulario/data/dammy_users.dart';
import 'package:formulario/modeis/user.dart';

// final usuario = User;

class Users with ChangeNotifier {
  final Map<String, User> _itens = {...DUMMY_USERS};
  List<User> get all {
    return [..._itens.values];
  }

  int get count {
    return _itens.length;
  }

  User byIndex(int i) {
    return _itens.values.elementAt(i);
  }

  void put(User user) {
    if (user == null) {
      return;
    }

    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _itens.containsKey(user.id)) {
      _itens.update(
          user.id, (_) => User(user.id, user.nome, user.email, user.avatarUrl));
    } else {
      final id = Random().nextDouble().toString();

      _itens.putIfAbsent(
          id, () => User(id, user.nome, user.email, user.avatarUrl));

      notifyListeners();
    }

    void remove(User user) {
      if (user != null && user.id != null) {
        _itens.remove(user.id);
        notifyListeners();
      }
    }
  }
}
