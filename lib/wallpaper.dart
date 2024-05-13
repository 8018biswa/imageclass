import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Wallpaper extends StatefulWidget {
  const Wallpaper({super.key});

  @override
  State<Wallpaper> createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(.3)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Find Something...",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Text(
                "Best of the month",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                  child: Image.asset(
                    "assets/images/god.webp",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orange),
                  child: Image.asset(
                    "assets/images/google.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Image.asset(
                    "assets/images/grayscale.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.amber),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text("Color tone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),color: Colors.amber
                  ),
                ),SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.black
                  ),
                ),SizedBox(width: 20,),
                Container(
                  height: 50,
                    width: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.orange),
                ),SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.blue),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),color: Colors.grey
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.amber),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),color: Colors.orange),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
