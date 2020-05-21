import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:post_app/post_detail2.dart';
import 'package:post_app/posts.dart';
import 'globales.dart' as globales;

class PostsList extends StatefulWidget {
  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  String url = "https://raw.githubusercontent.com/martincgro/jsons/master/posts.json";
  Posts posts;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async{//Con la funcion async hacemos una peticion asincrona de datos al html
    var response = await http.get(url);//Con el comando await esperamos a que termine la peticion de los datos
    var decodedJson = jsonDecode(response.body);//Con el json decode convertimos a json lo que este en formato texto
    posts = Posts.fromJson(decodedJson);//aqui pasamos la inforcamion qie obtuvimos de la decodificacion del json
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: posts==null ? Center(child: CircularProgressIndicator(),) :
      Column(
        children: <Widget>[
          Container(
            height: 200,
            decoration : BoxDecoration(
              borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight:Radius.circular(20)),
              color: const Color.fromARGB(255, 142, 9, 71),
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
              padding: EdgeInsets.only(top : 80,right: 120,left:50),
              child: Column(
              children: <Widget>[
                Text(
                  "Posts of Today",
                  style: TextStyle(fontSize: 40, color: Colors.white)
                  ),
                  Container(
                    height: 10,
                  ),
              ],
            ),
            )
          ),
          Expanded(
            child: Container(
            height: 388,
            margin : EdgeInsets.only(bottom: 2),
            decoration: BoxDecoration(
              color: Colors.transparent
            ),
            child: posts==null ? Center(child: CircularProgressIndicator(),) : //En esta linea estamos haciendo 
            //que en caso de que aun no tengamos informacion que mostrar se va a mostrar una progress bar
            ListView(
              padding: EdgeInsets.only(top :10),
              children: posts.post.map((p)=> Padding(
            padding: const EdgeInsets.only(bottom: 10 ,left: 10,right: 10),
            child: InkWell(//Esta line es un widget que lo que este adentro de el reacciona al touch
              onTap: (){
                //glo = p.id.toString();
                globales.id_p = p.id.toString();//aqui le asigno a una variable global el valor del id del post
                globales.post_body = p.body.toString();//aqui le asigno a una variable global el valor de body que es un Strimng
                debugPrint(globales.id_p);

                Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetail2(post2: posts)));//Con esta linea hacemos que se nos muestre la otra pagina
                
              },
              child: Hero(//Con el comando hero hacemos una pequeña animacion cuando abrimos otra pagina
                tag: p.title,
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color : Colors.black.withOpacity(0.04),
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding : EdgeInsets.all(12),
                        child:Text(
                        p.title,
                        style: TextStyle(fontSize: 15,color: Colors.black54), 
                      )
                      )
                      
                    ],
                  ),
                )
              ),
            ),
          )).toList(),
            ),
          )
          
          ),
      
        ],
      )
    );
    
  }
}