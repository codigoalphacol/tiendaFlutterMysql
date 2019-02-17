import 'package:flutter/material.dart';

//creamos Page de adminitracion
class BodegaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFD8D8D8),
        appBar: new AppBar(
            title: new Text("Bodega - Ventas"), backgroundColor: Colors.blueAccent),
        body: Column(children: <Widget>[          
          Row(            
            //ROW 1
            children: [             
              Container(
                padding: EdgeInsets.all(8.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.people,
                    color: Colors.blueAccent,
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(7.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  child: new Icon(
                    Icons.list,
                    color: Colors.grey[300],
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(7.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  child: new Icon(
                    Icons.cloud_done,
                    color: Colors.greenAccent,
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(7.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/LoginPage');
                  },
                  child: new Icon(
                    Icons.shopping_cart,
                    color: Colors.orangeAccent[100],
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),
            ],
          ),
          Row(//ROW 2
              children: [             
              Container(
                padding: EdgeInsets.all(7.0),
                child: new RawMaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/pages/listarUsuarios');
                  },
                  child: new Icon(
                    Icons.settings,
                    color: Colors.redAccent,
                    size: 63.0,
                  ),
                  shape: new CircleBorder(),
                  elevation: 2.0,
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(7.0),
                ),
              ),            
            ]),
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
