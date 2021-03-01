import 'package:flutter/material.dart';
import 'screens/home/location_detail.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

const LocationsRoute = "/";
const LocationDetailRoute = "location_detail";

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      // home: LocationDetail(),
      // home: Locations(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context)=> Locations(),
      //   "/second": (context)=> LocationDetail(),
      // },
      onGenerateRoute: _routes(),
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

  // RouteFactory _routes(){
  //   return (settings){
  //     final Map<String, dynamic> arguments = settings.arguments;
  //     Widget screen;
  //     switch (settings.name){
  //       case LocationsRoute :
  //         screen = Locations();
  //         break;        
  //       case LocationDetailRoute:
  //         screen = LocationDetail(arguments["id"]);
  //         break;
  //       default:
  //         return null;
  //     }
      
  //     return MaterialPageRoute(builder: (BuildContext build)=> screen);
  //   };
  // }
  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
