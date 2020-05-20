import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //final formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: FlutterLogo(
              size: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
            child: Text(
              "Login Page",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.none,
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
                fontFamily: "OpenSans",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Inicia sesion",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.none,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                //fontFamily: "OpenSans",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 15.0, left: 15.0),
            child: new Form(
                //key: formKey,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300,
                      child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.green,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: Icon(Icons.account_circle,
                                    color: Colors.white),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0)),
                                ),
                                width: 250,
                                height: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Usuario",
                                        fillColor: Colors.white,
                                        filled: true),
                                    validator: (value) => value.isEmpty
                                        ? "Correo no puede estar vacío!"
                                        : null,
                                    //onSaved: (value) => _email = value,
                                    style: TextStyle(
                                        fontSize: 18.0, color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        width: 300,
                        child: Material(
                            elevation: 5.0,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child:
                                      Icon(Icons.vpn_key, color: Colors.white),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0)),
                                  ),
                                  width: 250,
                                  height: 60,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Contraseña",
                                          fillColor: Colors.white,
                                          filled: true),
                                      validator: (value) => value.isEmpty
                                          ? "Contraseña no puede estar vacía!"
                                          : null,
                                      obscureText: true,
                                      //onSaved: (value) => _password = value,
                                      style: TextStyle(
                                          fontSize: 18.0, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 8, right: 8),
                      child: Container(
                          width: 300,
                          child: Container(
                              height: 130,
                              padding: EdgeInsets.all(40),
                              child: RaisedButton(
                                color: Colors.green,
                                child: Text(
                                  "Entrar",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                onPressed: () {},
                              ))),
                    )
                  ],
                )),
          )
        ],
      ),
    ));
  }
}