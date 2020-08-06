import 'package:dart_swapi/models/ResponseList.dart';

/// A Species resource is a type of person or character within the Star Wars Universe.
class SpeciesItem {
  String name;
  String classification;
  String designation;
  String averageHeight;
  String averageLifespan;
  String eyeColors;
  String hairColors;
  String skinColors;
  String language;
  String homeworld;
  List<String> people;
  List<String> films;
  String url;
  String created;
  String edited;

  SpeciesItem(Map map) {
    if (map.containsKey("name")) name = map['name'];

    if (map.containsKey("classification"))
      classification = map['classification'];

    if (map.containsKey("designation")) designation = map['designation'];

    if (map.containsKey("average_height"))
      averageHeight = map['average_height'];

    if (map.containsKey("average_lifespan"))
      averageLifespan = map['average_lifespan'];

    if (map.containsKey("eye_colors")) eyeColors = map['eye_colors'];

    if (map.containsKey("hair_colors")) hairColors = map['hair_colors'];

    if (map.containsKey("skin_colors")) skinColors = map['skin_colors'];

    if (map.containsKey("language")) language = map['language'];

    if (map.containsKey("homeworld")) homeworld = map['homeworld'];

    if (map.containsKey("url")) url = map['url'];

    if (map.containsKey("created")) created = map['created'];

    if (map.containsKey("edited")) edited = map['edited'];

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

/// Collection of SpeciesItem
class Species extends ResponseList {
  List<SpeciesItem> results;

  Species(Map map) : super(map) {
    results = new List();
    if (map.containsKey('results')) {
      for (int i = 0; i < map['results'].length; i++) {
        results.add(SpeciesItem(map['results'][i]));
      }
    }
  }
}
