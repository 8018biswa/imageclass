import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  List<Map<String, dynamic>> mChats = [
    {
      "name":"Biswa",
      "msg":"Hi",
      "time":"01:01 PM",
      "unreadCount":6,
      "profilepic":"https://www.online-image-editor.com/styles/2019/images/power_girl.png"
    },
    {
      "name":"Niki",
      "msg":"Hi",
      "time":"01:01 PM",
      "unreadCount":0,
      "profilepic":"https://media.istockphoto.com/id/1153561616/vector/women-are-waking-up-in-the-morning-she-feels-sleepy-and-very-exhausted.jpg?s=612x612&w=0&k=20&c=88sSF-Ze9A5LxbeRQYmjLrcTs1NVYBCTQ7FiG3JzkcE="
    },
    {
      "name":"Sahu babu",
      "msg":"Hi",
      "time":"01:01 PM",
      "unreadCount":6,
      "profilepic":"https://www.online-image-editor.com/styles/2019/images/power_girl.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Home"),
     ),
     body: ListView.builder(
        itemCount: mChats.length,
         itemBuilder: (context, index){
       return ListTile(
         leading: CircleAvatar(child: Image.network(
             "${mChats[index]["profilepic"]}")),
         title: Text("${mChats[index]["name"]}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
         subtitle: Text("${mChats[index]["msg"]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
         trailing: Column(
           children: [
             Text("${mChats[index]["time"]}"),
             CircleAvatar(
               radius: 12,
                 backgroundColor: Colors.deepPurple,
                 foregroundColor: Colors.white,
                 child: Text("${mChats[index]["unreadCount"]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)),
           ],
         ),
       );
     }),
   );
  }

}