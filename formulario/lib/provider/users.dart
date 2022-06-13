import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:formulario/data/dammy_users.dart';
import 'package:formulario/modeis/user.dart';

class Users with ChangeNotifier {
  Map<String, User> _itens = {...DUMMY_USERS};
  List<User> get all {
    return [..._itens.values];
  }

  int get count {
    return _itens.length;
  }
}
