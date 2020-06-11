
import 'package:flutter_swapi/models/ResponseList.dart';

class PeopleItem{
  String name;
  String birth_year;
  String eye_color;
  String gender;
  String hair_color;
  String height;
  String mass;
  String skin_color;
  String homeworld;
  String url;
  String created;
  String edited;

  List<String> films;
  List<String> species;
  List<String> starships;
  List<String> vehicles;

  PeopleItem(Map map) {
    if (map.containsKey("name"))
      name = map['name'];

    if (map.containsKey("birth_year"))
      birth_year = map['birth_year'];

    if (map.containsKey("eye_color"))
      eye_color = map['eye_color'];

    if (map.containsKey("gender"))
      gender = map['gender'];

    if (map.containsKey("hair_color"))
      hair_color = map['hair_color'];

    if (map.containsKey("height"))
      height = map['height'];

    if (map.containsKey("mass"))
      mass = map['mass'];

    if (map.containsKey("skin_color"))
      skin_color = map['skin_color'];

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

    species = new List();
    if (map.containsKey('species')) {
      for (int i = 0; i < map['species'].length; i++) {
        species.add(map['species'][i]);
      }
    }

    starships = new List();
    if (map.containsKey('starships')) {
      for (int i = 0; i < map['starships'].length; i++) {
        starships.add(map['starships'][i]);
      }
    }

    vehicles = new List();
    if (map.containsKey('vehicles')) {
      for (int i = 0; i < map['vehicles'].length; i++) {
        vehicles.add(map['vehicles'][i]);
      }
    }
  }
}

class People extends ResponseList{
  List<PeopleItem> results;

  People(Map map) : super(map){
    results = new List();
    if (map.containsKey('results')) {
      for (int i = 0; i < map['results'].length; i++) {
        results.add(PeopleItem(map['results'][i]));
      }
    }
  }
}