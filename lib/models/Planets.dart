import 'package:dart_swapi/models/ResponseList.dart';

/// A Planet resource is a large mass, planet or planetoid in the Star Wars Universe, at the time of 0 ABY.
class PlanetsItem {
  String name;
  String diameter;
  String rotationPeriod;
  String orbitalPeriod;
  String gravity;
  String population;
  String climate;
  String terrain;
  String surfaceWater;
  String url;
  String created;
  String edited;

  List<String> residents;
  List<String> films;

  PlanetsItem(Map map) {
    if (map.containsKey("name")) name = map['name'];

    if (map.containsKey("diameter")) diameter = map['diameter'];

    if (map.containsKey("rotation_period"))
      rotationPeriod = map['rotation_period'];

    if (map.containsKey("orbital_period"))
      orbitalPeriod = map['orbital_period'];

    if (map.containsKey("gravity")) gravity = map['gravity'];

    if (map.containsKey("population")) population = map['population'];

    if (map.containsKey("climate")) climate = map['climate'];

    if (map.containsKey("terrain")) terrain = map['terrain'];

    if (map.containsKey("surface_water")) surfaceWater = map['surface_water'];

    if (map.containsKey("url")) url = map['url'];

    if (map.containsKey("created")) created = map['created'];

    if (map.containsKey("edited")) edited = map['edited'];

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

/// Collection of PlanetsItem
class Planets extends ResponseList {
  List<PlanetsItem> results;

  Planets(Map map) : super(map) {
    results = new List();
    if (map.containsKey('results')) {
      for (int i = 0; i < map['results'].length; i++) {
        results.add(PlanetsItem(map['results'][i]));
      }
    }
  }
}
