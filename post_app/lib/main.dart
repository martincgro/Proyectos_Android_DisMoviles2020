import 'package:flutter/material.dart';
import 'package:post_app/posts_list.dart';

void main(){
  runApp(MaterialApp(
    title: "Post App",
    home: PostsList(),
    debugShowCheckedModeBanner: false,
  ));


}