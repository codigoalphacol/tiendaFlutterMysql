# tienda_app_flutter
Solution black screen login
Solution black screen login
solucion pantalla negra Login
codigo de la parte de login.php
//solucion pantalla negrea , black screen solution
Para los que tienen el problema de la pantalla negra 

You basically remove the line
Navigator.pop (context); found in the onPressed button to enter.
Yare's contribution to the channel

Básicamente eliminas la linea 
Navigator.pop(context); que se encuentra en el onPressed del boton para ingresar.
Aporte de Yare en el canal


 if(isset($_POST['username']))
    {
        $username=$_POST['username'];
        if(isset($_POST['password']))
        {
            $password=$_POST['password'];
            $consultar=$connect->query("SELECT * FROM users WHERE username='".$username."' and password='".$password."'");
            $resultado=array();
        
            while($extraerDatos=$consultar->fetch_assoc()){
                $resultado[]=$extraerDatos;
            }
        
            echo json_encode($resultado);
        
        }
//y funciona correctamente aporte comentarios de Miguel en el canal de Youtube.

In the file store.zip are all the php files of the connection and the CRUD, if you use xampp you must unzip this file in the path:
C: \ xampp \ htdocs \ my_store

![Codigo Alpha Flutter]

![alt text](https://github.com/codigoalphacol/tiendaFlutterMysql/blob/master/assets/images/loginmascrudmysluno.png) 

Los invitamos para que se suscriban en el canal codigo Alpha flutter en Youtube

https://www.youtube.com/watch?v=kwZeCZr8Axs

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
