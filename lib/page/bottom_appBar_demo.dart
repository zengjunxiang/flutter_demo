import 'each_view.dart';
import 'package:flutter/material.dart';

class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },

          tooltip: 'Increment',
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),

        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        bottomNavigationBar:BottomAppBar(
          color:Colors.lightBlue,
          shape:CircularNotchedRectangle(),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: (){

                },
              ),
              IconButton(
                icon: Icon(Icons.airport_shuttle),
                color: Colors.white,
                onPressed: (){

                },
              )
            ],
          ),
        )
    );
  }

}