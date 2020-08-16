import 'package:flutter/material.dart';
import 'package:my_list/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyListPage(),
    );
  }
}

class MyListPage extends StatelessWidget {
  //create the data source (data source could be local,
  //could be from an API, or could be from Firebase
  //string
  //number-int/double/float
  //boolean - true false
  //list - array
  //map - key value {"name":"mala","address":"(common bangi)"}
  final List<Map<String,Object>> entries = [
    {"name":"KFC", "address":"PKNS Seksyen 9 Bandar Baru Bangi", "rating":3},
{"name":"Itik Salai", "address":"Sungai Merab Dalam", "rating":4},
{"name":"3BG", "address":"Food valet bangi", "rating":3},
{"name":"Sate samuri", "address":"PKNS Seksyen 9 Bandar Baru Bangi", "rating":2},
{"name":"AnW", "address":"Evo mall seksyen 9 bandar baru bangi", "rating":3}];

  @override
  Widget build(BuildContext context) {
    //Do scaffold (app bar, Hello World)
    return Scaffold(
      appBar: AppBar(title: Text("My List"), backgroundColor: Colors.redAccent,),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        //how many rows are there?
        itemCount: entries.length,
        //what to show on each row
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            title: Text(entries[index]["name"]),
            subtitle: Text(entries[index]["address"]),
            leading: (entries [index]["rating"]) as int > 3
                ? Icon(Icons.star, color:Colors.yellow):
                SizedBox(),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SeconPage(restaurant: entries[index],)),
              );
            }
          );
        })
      );
  }
}
