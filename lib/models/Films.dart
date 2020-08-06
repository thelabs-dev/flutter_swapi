import 'package:dart_swapi/models/ResponseList.dart';

/// A Film resource is a single film.
class FilmsItem {
  String title;
  int episodeId;
  String openingCrawl;
  String director;
  String producer;
  String releaseDate;
  List<String> species;
  List<String> starships;
  List<String> vehicles;
  List<String> characters;
  List<String> planets;
  String url;
  String created;
  String edited;

  FilmsItem(Map map) {
    if (map.containsKey('title')) title = map['title'];

    if (map.containsKey('episode_id')) episodeId = map['episode_id'];

    if (map.containsKey('opening_crawl')) openingCrawl = map['opening_crawl'];

    if (map.containsKey('director')) director = map['director'];

    if (map.containsKey('producer')) producer = map['producer'];

    if (map.containsKey('release_date')) releaseDate = map['release_date'];

    if (map.containsKey('url')) url = map['url'];

    if (map.containsKey('created')) created = map['created'];

    if (map.containsKey('edited')) edited = map['edited'];

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

    characters = new List();
    if (map.containsKey('characters')) {
      for (int i = 0; i < map['characters'].length; i++) {
        characters.add(map['characters'][i]);
      }
    }

    planets = new List();
    if (map.containsKey('planets')) {
      for (int i = 0; i < map['planets'].length; i++) {
        planets.add(map['planets'][i]);
      }
    }
  }
}

/// Collection of FilmsItem
class Films extends ResponseList {
  List<FilmsItem> results;

  Films(Map map) : super(map) {
    results = new List();
    if (map.containsKey('results')) {
      for (int i = 0; i < map['results'].length; i++) {
        results.add(FilmsItem(map['results'][i]));
      }
    }
  }
}
