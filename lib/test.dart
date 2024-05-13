import 'dart:developer';

import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  const Test2({super.key});

  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(child: Text(count.toString(),style: TextStyle(fontSize: 90),)),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          count++;
          log(count.toString());
        });
      },child: Icon(Icons.add),),
    );
  }
}
