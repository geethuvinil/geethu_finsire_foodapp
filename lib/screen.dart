
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'buttons.dart';
import 'cards.dart';
class screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor:Colors.white,
          elevation: 0,
          title: Text('Feed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),

          ),
            actions: [
            IconButton(onPressed: () {
      print("add icon selected");
      },
        icon: Icon(Icons.add),
        iconSize: 40.0,
              color: Colors.blueGrey,
      ),
      IconButton(onPressed: () {
        print("camera selected");
      },
        icon: Icon(Icons.mail_outlined),
        iconSize: 40.0,
        color: Colors.blueGrey,
      ),
      ],

    leading:IconButton(
            onPressed: (){
              print("leading button pressed");
            },
      icon: Image.asset('assets/chef.png')
        ),

        ),
        bottomNavigationBar: BottomAppBar(
          color:Colors.indigo[800],
          child: Row(
            children: [
              IconButton(icon: Icon(Icons.home_outlined,color: Colors.white,size: 35), onPressed: () {}),
              IconButton(icon: Icon(Icons.search,color: Colors.white,size: 35), onPressed: () {}),
              IconButton(icon: Icon(Icons.circle_outlined,color: Colors.white,size: 35), onPressed: () {}),
              IconButton(icon: Icon(Icons.task_alt,color: Colors.white,size: 35), onPressed: () {}),
              IconButton(icon: Icon(Icons.account_circle_outlined,color: Colors.white,size: 35), onPressed: () {}),
            ],
          ),
        ),
          body:SingleChildScrollView(
          child: Column(
          children: <Widget>[
              button(),
            Cards(),

            ],)

          ),
    ),);
  }
}
