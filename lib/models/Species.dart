
import 'package:flutter_swapi/models/ResponseList.dart';

class SpeciesItem{
  String name;
  String classification  ;
  String designation  ;
  String average_height  ;
  String average_lifespan ;
  String eye_colors ;
  String hair_colors ;
  String skin_colors ;
  String language ;
  String homeworld ;
  List<String> people ;
  List<String> films  ;
  String url;
  String created;
  String edited;

  SpeciesItem(Map map) {
    if (map.containsKey("name"))
      name = map['name'];

    if (map.containsKey("classification"))
      classification = map['classification'];

    if (map.containsKey("designation"))
      designation = map['designation'];

    if (map.containsKey("average_height"))
      average_height = map['average_height'];

    if (map.containsKey("average_lifespan"))
      average_lifespan = map['average_lifespan'];

    if (map.containsKey("eye_colors"))
      eye_colors = map['eye_colors'];

    if (map.containsKey("hair_colors"))
      hair_colors = map['hair_colors'];

    if (map.containsKey("skin_colors"))
      skin_colors = map['skin_colors'];

    if (map.containsKey("language"))
      language = map['language'];

    if (map.containsKey("homeworld"))
      homeworld = map['homeworld'];

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

    people = new List();
    if (map.containsKey('people')) {
      for (int i = 0; i < map['people'].length; i++) {
        people.add(map['people'][i]);
      }
    }
  }
}

class Species extends ResponseList{
  List<SpeciesItem> results;

  Species(Map map) : super(map){
    results = new List();
    if (map.containsKey('results')) {
      for (int i = 0; i < map['results'].length; i++) {
        results.add(SpeciesItem(map['results'][i]));
      }
    }
  }
}