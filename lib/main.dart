import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部导航的制作',
      home: BottomNaivgationWidget(),
    );
  }
}





class BottomNaivgationWidget extends StatefulWidget{

  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();

}

class _BottomNavigationWidgetState extends State<BottomNaivgationWidget> {

  final _BottomNavigationColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
            )
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

      )
      ,
    );
  }
}

