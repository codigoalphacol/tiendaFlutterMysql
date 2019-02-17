import 'package:flutter/material.dart';

class BodegaPage extends StatelessWidget {

  BodegaPage({this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFFD8D8D8),
        appBar: new AppBar(
            title: new Text("Bodega - Ventas"),
            backgroundColor: Colors.blueAccent),
        body: Column(children: <Widget>[
          Row(
            //ROW 1
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/LoginPage');
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0)),
                    color: Colors.orange,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(
                          Icons.airplanemode_active,
                          size: 57,
                        ),
                        Text("Clientes"),
                      ],
                    ),
                  ),
                ),
              ),
              
              Container(
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0)),
                  color: Colors.orange,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(
                        Icons.airplanemode_active,
                        size: 57,
                      ),
                      Text("Clientes"),
                    ],
                  ),
                ),
              ),
              VerticalDivider(),
              Container(
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0)),
                  color: Colors.orange,
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(
                        Icons.airplanemode_active,
                        size: 57,
                      ),
                      Text("Clientes"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //Row 4
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(7.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  child: new Icon(
                    Icons.exit_to_app,
                    color: Colors.red[900],
                    size: 70.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.transparent,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
            ],
          )
        ]));
  }
}
