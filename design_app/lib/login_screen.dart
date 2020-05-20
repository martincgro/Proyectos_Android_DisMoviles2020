import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 200.0,),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: new Text("LOGIN",style: TextStyle(fontSize: 80),)
                    ),
                
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0,vertical: 0.0),
                  child: _buildTextField("Usuario") 
                  ),

                 new SizedBox(
                   height: 40.0
                 ),

                 new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60.0,vertical: 0.0),
                  child: _buildTextField("Contraseña") 
                  )
                ],
              )
            ],
        )
      )

        
      );
    
  }
Widget _buildTextField(String label)
    {
      return TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: label
        ),
      );
    }
}