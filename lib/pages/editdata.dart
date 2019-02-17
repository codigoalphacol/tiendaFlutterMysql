import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tienda_app_flutter/pages/listarUsuarios.dart';


class EditData extends StatefulWidget {
  final List list;
  final int index;

  EditData({this.list, this.index});

  @override
  _EditDataState createState() => new _EditDataState();
}

class _EditDataState extends State<EditData> {

  TextEditingController controllerUsername;
  TextEditingController controllerPassword;
  TextEditingController controllerNivel;
  


  void editData() {
    var url="http://10.0.2.2/tienda/editdata.php";
    http.post(url,body: {
      "id": widget.list[widget.index]['id'],
      "username": controllerUsername.text,
      "password": controllerPassword.text,
      "nivel": controllerNivel.text
    });
  }


  @override
    void initState() {
      controllerUsername= new TextEditingController(text: widget.list[widget.index]['username'] );
      controllerPassword= new TextEditingController(text: widget.list[widget.index]['password'] );
      controllerNivel= new TextEditingController(text: widget.list[widget.index]['nivel'] );
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("EDITAR"),
      ),
      body: Form(       
          child: ListView(
            padding: const EdgeInsets.all(10.0),
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
                  new Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  new RaisedButton(
                    child: new Text("Guardar"),
                    color: Colors.blueAccent,
                    onPressed: () {
                      editData();
                      Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context)=>new Home()
                        )
                      );
                    },
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}