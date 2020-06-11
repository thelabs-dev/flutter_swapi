
import 'package:flutter_swapi/models/ResponseList.dart';

class PlanetsItem{
  String name ;
  String diameter ;
  String rotation_period ;
  String orbital_period ;
  String gravity ;
  String population ;
  String climate ;
  String terrain ;
  String surface_water ;
  String url;
  String created;
  String edited;

  List<String> residents ;
  List<String> films ;

  PlanetsItem(Map map) {
    if (map.containsKey("name"))
      name = map['name'];

    if (map.containsKey("diameter"))
      diameter = map['diameter'];

    if (map.containsKey("rotation_period"))
      rotation_period = map['rotation_period'];

    if (map.containsKey("orbital_period"))
      orbital_period = map['orbital_period'];

    if (map.containsKey("gravity"))
      gravity = map['gravity'];

    if (map.containsKey("population"))
      population = map['population'];

    if (map.containsKey("climate"))
      climate = map['climate'];

    if (map.containsKey("terrain"))
      terrain = map['terrain'];

    if (map.containsKey("surface_water"))
      surface_water = map['surface_water'];

    if (map.containsKey("url"))
      url = map['url'];

    if (map.containsKey("created"))
      created = map['created'];

    if (map.containsKey("edited"))
      edited = map['edited'];

    films = new List();
    if (map.containsKey('films')) {
      for (int i = 0; i < map['films'].length; i++) {
        films.add(map['films'][i]);
      }
    }

    residents = new List();
    if (map.containsKey('residents')) {
      for (int i = 0; i < map['residents'].length; i++) {
        residents.add(map['residents'][i]);
      }
    }

    films = new List();
    if (map.containsKey('films')) {
      for (int i = 0; i < map['films'].length; i++) {
        films.add(map['films'][i]);
      }
    }
  }
}

class Planets extends ResponseList{
  List<PlanetsItem> results;

  Planets(Map map) : super(map){
    results = new List();
    if (map.containsKey('results')) {
      for (int i = 0; i < map['results'].length; i++) {
        results.add(PlanetsItem(map['results'][i]));
      }
    }
  }
}