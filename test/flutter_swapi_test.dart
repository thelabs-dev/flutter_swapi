import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_swapi/flutter_swapi.dart';

void main() {
  test('People', () async {
    People people = await swapi.getPeople();
    for (int i = 0; i < people.results.length; i++) {
      print(people.results[i].name);
      PeopleItem item = await swapi.getPeopleItem(url: people.results[i].url);
      print("---> " + item.height);
    }
  });

  test('Films', () async {
    Films films = await swapi.getFilms();
    for (int i = 0; i < films.results.length; i++) {
      print(films.results[i].title);
      FilmsItem item = await swapi.getFilmsItem(url: films.results[i].url);
      print("---> " + item.director);
    }
  });

  test('Planets', () async {
    Planets planets = await swapi.getPlanets();
    for (int i = 0; i < planets.results.length; i++) {
      print(planets.results[i].name);
      PlanetsItem item = await swapi.getPlanetsItem(url: planets.results[i].url);
      print("---> " + item.rotation_period);
    }
  });

  test('Species', () async {
    Species species = await swapi.getSpecies();
    for (int i = 0; i < species.results.length; i++) {
      print(species.results[i].name);
      SpeciesItem item = await swapi.getSpeciesItem(url: species.results[i].url);
      print("---> " + item.language);
    }
  });

  test('Starships', () async {
    Starships starships = await swapi.getStarships();
    for (int i = 0; i < starships.results.length; i++) {
      print(starships.results[i].name);
      StarshipsItem item = await swapi.getStarshipsItem(url: starships.results[i].url);
      print("---> " + item.manufacturer);
    }
  });

  test('Vehicles', () async {
    Vehicles vehicles = await swapi.getVehicles();
    for (int i = 0; i < vehicles.results.length; i++) {
      print(vehicles.results[i].name);
      VehiclesItem item = await swapi.getVehiclesItem(url: vehicles.results[i].url);
      print("---> " + item.manufacturer);
    }
  });
}
