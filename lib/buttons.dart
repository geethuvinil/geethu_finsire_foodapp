import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RaisedButton(
            shape: StadiumBorder(
                side: BorderSide(color: Colors.red, width: 2)
            ),

            onPressed: (){
              print("#trending button pressed");
            },

            child:Text("#Trending"),
            color:Colors.red,
            textColor: Colors.white,
            highlightColor: Colors.red,
            elevation: 10,
          ),
          SizedBox(
            width: 20,
          ),
          RaisedButton(
            shape:StadiumBorder(
          side: BorderSide(color: Colors.red, width: 1)
    ),
            onPressed: (){
              print("#Food button pressed");
            },
            child:Text("#Food"),
            color:Colors.white,
            textColor: Colors.black,
            highlightColor: Colors.red,
            elevation: 10,
          ),
          SizedBox(
            width: 20,
          ),
          RaisedButton(
            shape:StadiumBorder(
          side: BorderSide(color: Colors.red, width: 1)
    ),
            onPressed: (){
              print("#Activity button pressed");
            },
            child:Text("#Activity"),
            color:Colors.white,
            textColor: Colors.black,
            highlightColor: Colors.red,
            elevation: 10,
          ),
        ],
      ),
    );
  }
}
