import 'package:flutter/material.dart';

class SuperV extends StatelessWidget {
 
  SuperV({this.username});
  final String username;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text('Supervisor'),),
      body: new Column(
        children: <Widget>[          
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
        ]
      ),
    );
  }
}