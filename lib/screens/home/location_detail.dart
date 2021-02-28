import 'package:flutter/material.dart';
import 'image_container.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget{ 

  @override
  Widget build(BuildContext context){
    final locations = Location.fetchAll();
    final location = locations.first;

    List<Widget> textSections(Location location){
      return location.facts.map((fact) => TextSection(fact.title, fact.body)).toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ImageContainer(location.imagePath),
        ]..addAll(textSections(location)),
        )
    );

    
  }
}
