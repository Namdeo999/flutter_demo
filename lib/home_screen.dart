import 'dart:convert';

import 'package:demo_app/models/Posts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Posts> postList = [] ; //list initialize null
  Future<List<Posts>> getPostApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      for (var element in data) {
        postList.add(Posts.fromJson(element));
      }
      return postList;
    }else{
      return postList;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('API Testing'),
      ),
      body: Column(
        children:  [
          FutureBuilder(
            future: getPostApi(),
            builder: (context, snapshot) 
            {
              if(!snapshot.hasData){
                return Text('Loding');
              }else{
                return ListView.builder(
                  itemCount: postList.length,
                  itemBuilder: (context, index) {

                  return Text(index.toString());
                });
              }
            },
          )
        ],
      ),
    );
  }
}