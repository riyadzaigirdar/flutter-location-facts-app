import 'package:flutter/material.dart';
// import 'package:free_code_camp/screens/home/location_detail.dart';
import '../../models/location.dart';
import '../../app.dart';


class Locations extends StatelessWidget{

  void handleDetailView(BuildContext context, int locationId){
    // Navigator.pushNamed(context, "/second");
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': locationId});
  }

  @override
  Widget build(BuildContext context){
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title : Text("Locations")
      ),
      body: ListView(
        children: locations.map((item)=>
        GestureDetector(
          child: Text(item.name),
          onTap: ()=> handleDetailView(context, item.id),
          )
        ).toList(),
      ),
    );
  }
}