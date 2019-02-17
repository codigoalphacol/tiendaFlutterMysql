import 'package:flutter/material.dart';
import 'package:tienda_app_flutter/pages/listarUsuarios.dart';
import './editdata.dart';
import 'package:http/http.dart' as http;


class Detail extends StatefulWidget {
  List list;
  int index;
  Detail({this.index,this.list});
  @override
  _DetailState createState() => new _DetailState();
}

class _DetailState extends State<Detail> {

void deleteData(){
  var url="http://10.0.2.2/tienda/deleteData.php";
  http.post(url, body: {
    'id': widget.list[widget.index]['id']
  });
}

void confirm (){
  AlertDialog alertDialog = new AlertDialog(
    content: new Text("Esta seguto de eliminar '${widget.list[widget.index]['username']}'"),
    actions: <Widget>[
      new RaisedButton(
        child: new Text("OK Eliminado!",style: new TextStyle(color: Colors.black),),
        color: Colors.red,
        onPressed: (){
          deleteData();
          Navigator.of(context).push(
            new MaterialPageRoute(
              builder: (BuildContext context)=> new Home(),
            )
          );
        },
      ),
      new RaisedButton(
        child: new Text("CANCELAR",style: new TextStyle(color: Colors.black)),
        color: Colors.green,
        onPressed: ()=> Navigator.pop(context),
      ),
    ],
  );

  showDialog(context: context, child: alertDialog);
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['username']}")),
      body: new Container(
        height: 270.0, 
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[

                new Padding(padding: const EdgeInsets.only(top: 30.0),),
                new Text(widget.list[widget.index]['username'], style: new TextStyle(fontSize: 20.0),),
                Divider(),
                new Text("Nivel : ${widget.list[widget.index]['nivel']}", style: new TextStyle(fontSize: 18.0),),
                new Padding(padding: const EdgeInsets.only(top: 30.0),),

                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                    child: new Text("EDITAR"),                  
                    color: Colors.blueAccent,
                    shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: ()=>Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context)=>new EditData(list: widget.list, index: widget.index,),
                        )
                      ),                    
                  ),
                  VerticalDivider(),
                  new RaisedButton(
                    child: new Text("ELIMINAR"),                  
                    color: Colors.redAccent,
                    shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: ()=>confirm(),                
                  ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}