import 'package:flutter/material.dart';
import 'package:flutter_demo/page/lrregularbuttom/bottom_appbar_demo.dart';
import 'package:flutter_demo/page/rulebottom/airplaypage.dart';
import 'package:flutter_demo/page/rulebottom/categorypage.dart';
import 'package:flutter_demo/page/rulebottom/emailpage.dart';
import 'package:flutter_demo/page/rulebottom/homepage.dart';
import 'package:flutter_demo/page/pages.dart';
import 'package:flutter_demo/page/frosted_glass_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部导航的制作',
      // home: BottomNaivgationWidget(),
      home: FrostedGlassDemo(),

      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    );

  }
}


//　BottomNaivgationWidget
class BottomNaivgationWidget extends StatefulWidget{

  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();

}

class _BottomNavigationWidgetState extends State<BottomNaivgationWidget> {

  final _BottomNavigationColor = Colors.blue;

  final List<Widget> list = List();
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState

    list
      ..add(HomePage())
      ..add(EmailPage())
      ..add(CategoryPage())
      ..add(AirplayPage());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: list[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:Icon(
              Icons.home,
              color:_BottomNavigationColor,
            ),
            title:Text(
                'Home',
                style:TextStyle(color:_BottomNavigationColor)
            ),
        ),
        BottomNavigationBarItem(
            icon:Icon(
              Icons.email,
              color:_BottomNavigationColor,
            ),
            title:Text(
                'Email',
                style:TextStyle(color:_BottomNavigationColor)
            )
        ),
        BottomNavigationBarItem(
            icon:Icon(
              Icons.pages,
              color:_BottomNavigationColor,
            ),
            title:Text(
                'Pages',
                style:TextStyle(color:_BottomNavigationColor)
            )
        ),
        BottomNavigationBarItem(
            icon:Icon(
              Icons.airplay,
              color:_BottomNavigationColor,
            ),
            title:Text(
                'AipPlay',
                style:TextStyle(color:_BottomNavigationColor)
            )
        ),
        ],

        currentIndex: _currentIndex,
        onTap: (int index){
           setState(() {
             _currentIndex = index;
           });
        },

        //  type:BottomNavigationBarType.fixed

      )
      ,
    );
  }
}





