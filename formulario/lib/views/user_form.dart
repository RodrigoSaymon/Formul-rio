import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

final _form = GlobalKey<FormState>();

class UserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Usuário'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              var validate2 = _form.currentState?.validate;
              final isValide = validate2;

              if (validate2 != null) {
                _form.currentState?.save();
                Navigator.of(context).pop();
              } else {}
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        key: _form,
        child: Form(
          child: Column(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'nome'),
              validator: (value) {
                return 'Ocorreu um Erro';
              },
              onSaved: (value) {
                print(value);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'avatar'),
            )
          ]),
        ),
      ),
    );
  }
}
