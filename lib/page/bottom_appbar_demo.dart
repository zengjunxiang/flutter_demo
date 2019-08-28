import 'package:flutter/material.dart';
import 'each_view.dart';


class BottomAppBarDemo extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {


  List<Widget> _eachView;  //创建视图数组
  int _index = 0;          //数组索引，通过改变索引值改变视图


  @override
  void initState() {
    // TODO: implement initState

    _eachView = List();
    
    _eachView
    ..add(EachView('Home'))
    ..add(EachView('Me'));

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){

            //打开一个新页面
            Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
              return EachView('New Page');
            }));
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

