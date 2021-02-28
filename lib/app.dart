import 'package:flutter/material.dart';
import 'screens/home/location_detail.dart';
import 'style.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LocationDetail(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle)
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body2: Body1TextStyle
        )
      ),
    );
  }
}
