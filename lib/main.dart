import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tienda_app_flutter/bodegaPage.dart';
import 'package:tienda_app_flutter/powerPage.dart';

void main() => runApp(new MyApp());

String username='';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login PHP My Admin',     
      home: new MyHomePage(),
      routes: <String,WidgetBuilder>{
        '/powerPage': (BuildContext context)=> new SuperV(username: username,),
        '/bodegaPage': (BuildContext context)=> new BodegaPage(username: username,),
        '/MyHomePage': (BuildContext context)=> new MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

TextEditingController user=new TextEditingController();
TextEditingController pass=new TextEditingController();

String msg='';

Future<List> _login() async {
  final response = await http.post("http://10.0.2.2/my_store/login.php", body: {
    "username": user.text,
    "password": pass.text,
  });

  var datauser = json.decode(response.body);

  if(datauser.length==0){
    setState(() {
          msg="Login Fail";
        });
  }else{
    if(datauser[0]['nivel']=='super'){
       Navigator.pushReplacementNamed(context, '/powerPage');
    }else if(datauser[0]['nivel']=='bodega'){
      Navigator.pushReplacementNamed(context, '/bodegaPage');
    }

    setState(() {
          username= datauser[0]['username'];
        });

  }

  return datauser;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Username",style: TextStyle(fontSize: 18.0),),
              TextField(   
                controller: user,                
                decoration: InputDecoration(
                  hintText: 'Username'
                ),           
                ),
              Text("Password",style: TextStyle(fontSize: 18.0),),
              TextField(  
                controller: pass,  
                obscureText: true,                
                 decoration: InputDecoration(
                  hintText: 'Password'
                ),                
                ),
              
              RaisedButton(
                child: Text("Login"),
                onPressed: (){
                  _login();
                  Navigator.pop(context); 
                },
              ),

              Text(msg,style: TextStyle(fontSize: 20.0,color: Colors.red),)
             

            ],
          ),
        ),
      ),
    );
}
}