import 'package:flutter/material.dart';

class SeconPage extends StatelessWidget {
  SeconPage({Key key, @required this.restaurant}): super(key:key);
  Map <String, Object> restaurant;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail page"),),
      body: Column(
        children: [
          Text(restaurant["name"]),
          SizedBox(height: 16,),
          Text(restaurant["address"]),
          SizedBox(height: 16,),
          Text("Rating ${restaurant["rating"]}"),
          SizedBox(height: 16,),
          Text("Desc"),
        ],
      ),
    );
  }
}