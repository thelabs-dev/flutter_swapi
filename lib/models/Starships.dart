
import 'package:flutter_swapi/models/ResponseList.dart';

class StarshipsItem{
  String name;
  String model ;
  String starshipClass ;
  String manufacturer ;
  String costInCredits;
  String length;
  String crew;
  String passengers;
  String maxAtmospheringSpeed;
  String hyperdriveRating;
  String mglt;
  String cargoCapacity;
  String consumables;
  List<String> films ;
  List<String> pilots ;
  String url;
  String created;
  String edited;

  StarshipsItem(Map map) {
    if (map.containsKey("name"))
      name = map['name'];

    if (map.containsKey("model"))
      model = map['model'];

    if (map.containsKey("starship_class"))
      starshipClass = map['starship_class'];

    if (map.containsKey("manufacturer"))
      manufacturer = map['manufacturer'];

    if (map.containsKey("cost_in_credits"))
      costInCredits = map['cost_in_credits'];

    if (map.containsKey("length"))
      length = map['length'];

    if (map.containsKey("crew"))
      crew = map['crew'];

    if (map.containsKey("passengers"))
      passengers = map['passengers'];

    if (map.containsKey("max_atmosphering_speed"))
      maxAtmospheringSpeed = map['max_atmosphering_speed'];

    if (map.containsKey("hyperdrive_rating"))
      hyperdriveRating = map['hyperdrive_rating'];

    if (map.containsKey("MGLT"))
      mglt = map['MGLT'];

    if (map.containsKey("cargo_capacity"))
      cargoCapacity = map['cargo_capacity'];

    if (map.containsKey("consumables"))
      consumables = map['consumables'];

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

    pilots = new List();
    if (map.containsKey('pilots')) {
      for (int i = 0; i < map['pilots'].length; i++) {
        pilots.add(map['pilots'][i]);
      }
    }
  }
}

class Starships extends ResponseList{
  List<StarshipsItem> results;

  Starships(Map map) : super(map){
    results = new List();
    if (map.containsKey('results')) {
      for (int i = 0; i < map['results'].length; i++) {
        results.add(StarshipsItem(map['results'][i]));
      }
    }
  }
}