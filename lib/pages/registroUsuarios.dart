import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => new _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController controllerUsername = new TextEditingController();
  TextEditingController controllerPassword = new TextEditingController();
  TextEditingController controllerNivel = new TextEditingController();

  var _formKey = GlobalKey<FormState>();

  void addData() {
    var url = "http://10.0.2.2/tienda/adddata.php";

    http.post(url, body: {
      "username": controllerUsername.text,
      "password": controllerPassword.text,
      "nivel": controllerNivel.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Adicionar Usuarios"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new ListTile(
                    leading: const Icon(Icons.person, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerUsername,
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa un nombre de usurio";
                          },
                      decoration: new InputDecoration(
                        hintText: "Usurio", labelText: "Usuario",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.location_on, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerPassword,
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa una Contraseña";
                          },
                      decoration: new InputDecoration(
                        hintText: "Contraseña", labelText: "Contraseña",
                      ),
                    ),
                  ),
                  new ListTile(
                    leading: const Icon(Icons.settings_input_component, color: Colors.black),
                    title: new TextFormField(
                      controller: controllerNivel,
                          validator: (value) {
                            if (value.isEmpty) return "Ingresa un Nivel";
                          },
                      decoration: new InputDecoration(
                        hintText: "Nivel", labelText: "Nivel",
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1.0,
                  ),                 
                  new RaisedButton(
                    child: new Text("Agregar"),
                    color: Colors.blueAccent,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        addData();
                        Navigator.pop(context);
                      }
                    },
                  ),
                  new RaisedButton(
                    child: new Text("Salir"),
                    color: Colors.blueAccent,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/adminPage');
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
