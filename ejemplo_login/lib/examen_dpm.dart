import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


class Examen extends StatelessWidget{
Widget build(BuildContext context) {
    // TODO: implement build
Widget txtUser = Padding(
                padding: EdgeInsets.only(top: 16, left: 8, right: 8),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Icons.account_circle, color: Colors.white,),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                  )
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                  child: TextFormField(
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Usuario",
                                      fillColor: Colors.white,
                                      filled: true
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        )
                      )
                    ],
                  ),
                )
              );    
Widget txtContra = Padding(
                  padding: EdgeInsets.only(top: 16, left: 8, right: 8),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: 300,
                            child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                color: Colors.blue,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Icon(Icons.vpn_key, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 250,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomRight: Radius.circular(10)
                                          )
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: TextFormField(
                                          obscureText: true,
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Contraseña",
                                              fillColor: Colors.white,
                                              filled: true
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                            )
                        )
                      ],
                    ),
                  )
              );      
Widget titulo = Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Travel App",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                        fontSize: 54,
                        fontWeight: FontWeight.w700,
                        color: Colors.red
                    )
                  )
                ),
              );    
  Widget botonIn = Padding(
                padding: EdgeInsets.only(top:20, left: 8,right: 8),
                child: Container(
                  width: 300,
                  height: 130,
                  padding: EdgeInsets.all(40),
                  child: RaisedButton(
                    elevation: 5,
                    color: Colors.red,
                    child: Text(
                        "Entrar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ), onPressed: () {},
                  )
                ),
              );
  Widget flutterLogo = Padding(
                padding: EdgeInsets.all(10),
                child: FlutterLogo(size: 150,colors: Colors.red ,),
      );    
Widget bodyLandscape = ListView(
  children: <Widget>[
    Row(
children: <Widget>[
  Column(
    children: <Widget>[
      flutterLogo,
      titulo
    ],
  ),
  Expanded(
   child : Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top:5.0),
      ),
      txtUser,
      txtContra
    ],
  )
  )
  
  
],

),
  Padding(
    padding: EdgeInsets.only(),
    child: Center(
  child: botonIn
  ))
  


  ],
);

  
Widget bodyPortrait = ListView(

   );



  
  return Scaffold(
      body : OrientationBuilder(
        builder: (context, orientation){
          return orientation == Orientation.portrait ? bodyPortrait : bodyLandscape;
        },
      )
    );
  
  }
  

  

   

    

  

  
}