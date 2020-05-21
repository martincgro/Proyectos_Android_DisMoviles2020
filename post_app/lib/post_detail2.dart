import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:post_app/comentarios.dart';
import 'package:post_app/posts.dart';
import 'globales.dart' as globales;

class PostDetail2 extends StatefulWidget {
  Posts post2;
  PostDetail2({this.post2});
  @override
  _PostDetail2State createState() => _PostDetail2State();
}
//Esta clase la encontre en este link : https://stackoverflow.com/questions/57571982/cant-fetch-data-api-url-json-flutter
//me ayudo a que pudiera obtener los datos con el jsonplaceholder,asi que algunas cosas de aqui nose para que son
class _PostDetail2State extends State<PostDetail2> {

  bool loading = true;
   final String url = "https://jsonplaceholder.typicode.com/posts/"+globales.id_p+"/comments";//En esta linea utilizamos
   //la variable global,la cual,cada vez que seleccionemos un post en la screen anterior nos va aguardar su id
   //y despues con ese id vamos a acceder a los comentarios de ese post
  var client = http.Client();
  List<Comentarios> comentarios = List<Comentarios>();


  @override
  void initState(){
    fetchData();
    super.initState();
  }


  Future<void> fetchData() async {
    http.Response response = await client.get(url); //Con esta linea obtenemos la informacion del url
    if(response.statusCode == 200){ // En otras paginas decia que si el valor era 200 significaba que si se conecto
      List responseJson = json.decode(response.body); //Guardamos en una lista los datos el body del json pero ya decodificado
      responseJson.map((m) => comentarios.add(new Comentarios.fromJson(m))).toList();//Con esta linea 
      //hacemos un mapeo de nuestra variable response json y a comentarios le vamos a agregar los elementos
      //para que se forme una lista de dichos elementos,los cuales contendran los datos de los comentarios
      //de los post
      setState(() {
        loading = false;
      });
    } else {
      throw('error');
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            decoration : BoxDecoration(
              borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
              color: const Color.fromARGB(255, 35, 15, 147),
               boxShadow: <BoxShadow>[
                      new BoxShadow(
                        spreadRadius: 3.0,
                      color: Colors.black45,
                         blurRadius: 5.0,
                         offset: new Offset(0.0, 1.0),
                      ),
                ]

            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 37),
                  child: Text(
                  "Post:",
                  style: TextStyle(fontSize: 40, color: Colors.white)
                  )
                ),
                Padding(
              padding: EdgeInsets.only(top:16),
                child:Container(
                height: 200,
            decoration : BoxDecoration(
              borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(20),
              bottomRight:Radius.circular(20),topRight: Radius.circular(130)),
              color: Color.fromARGB(255, 222, 194, 17),
               boxShadow: <BoxShadow>[
                      new BoxShadow(
                        spreadRadius: 3.0,
                      color: Colors.black45,
                         blurRadius: 5.0,
                         offset: new Offset(0.0, 1.0),
                      ),
                ]

            ),
            child: Padding(
              padding: EdgeInsets.all(35),
              child: Center(
                child: Text(
                  globales.post_body,//Aqui estamos imprimiendo el body del post que seleccionamos en la
                  //screen anterior y lo mostramos
                  style: TextStyle(fontSize: 15, color: Colors.white70)
                )
              ),
              ),
          )
          ),
              ],
            )
            
            ),
          Expanded(
            child: Container(
        child: loading ?
        Container(
          height: 388,
            margin : EdgeInsets.only(bottom: 2),
            decoration: BoxDecoration(
              color: Colors.transparent
            ),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ) :
        ListView.builder(//En lugar de un Grid view como en el ejercicio anterior,esta vez utilizamos un list view
          itemCount: comentarios.length,//Este comando cuenta cuantos elementos existen
          padding: EdgeInsets.only(top :10),
          itemBuilder: (BuildContext context, int index){
            return  Card(//Creamos una card en donde mostraremos los datos
              child: ListTile(//Con list title podemos poner dentro de la car un titulo un subtitulo,algun icono e incluso un logo
                title: Text(comentarios[index].name, style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle:Text(comentarios[index].email) ,
                trailing: Icon(Icons.email),
              ),
            );
          },
        )
      ),
          )
        ],
      )
    );
  }
}