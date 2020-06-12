import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_swapi/flutter_swapi.dart';
import 'package:flutter_swapi/models/Films.dart';


mixin swapi {
  static String _baseUrl = "https://swapi.dev/api/";
  static String _resourceFilms = "films/";
  static String _resourcePeople = "people/";
  static String _resourceSpecies = "species/";
  static String _resourcePlanets = "planets/";
  static String _resourceStarships = "starships/";
  static String _resourceVehicles = "vehicles/";


  static Future<FilmsItem> getFilmsItem({int id, String url}){
    assert(id != null || url != null);

    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceFilms + (id == null? "": id.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return FilmsItem(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<Films> getFilms({int page, String url}){
    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceFilms + (page == null? "": page.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return Films(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<People> getPeople({int page, String url}){
    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourcePeople + (page == null? "": page.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return People(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<PeopleItem> getPeopleItem({int id, String url}){
    assert(id != null || url != null);

    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourcePeople + (id == null? "": id.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return PeopleItem(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static  Future<Planets> getPlanets({int page, String url}){
    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourcePlanets + (page == null? "": page.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return Planets(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<PlanetsItem> getPlanetsItem({int id, String url}){
    assert(id != null || url != null);

    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourcePlanets + (id == null? "": id.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return PlanetsItem(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<Species> getSpecies({int page, String url}){
    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceSpecies + (page == null? "": page.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return Species(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<SpeciesItem> getSpeciesItem({int id, String url}){
    assert(id != null || url != null);

    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceSpecies + (id == null? "": id.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return SpeciesItem(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<Starships> getStarships({int page, String url}){
    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceStarships + (page == null? "": page.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return Starships(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<StarshipsItem> getStarshipsItem({int id, String url}){
    assert(id != null || url != null);

    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceStarships + (id == null? "": id.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return StarshipsItem(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<Vehicles> getVehicles({int page, String url}){
    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceVehicles + (page == null? "": page.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return Vehicles(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }

  static Future<VehiclesItem> getVehiclesItem({int id, String url}){
    assert(id != null || url != null);

    http.Client httpClient = http.Client();
    String urlRequest = (url == null ? _baseUrl + _resourceVehicles + (id == null? "": id.toString() + "/") : url);
    return httpClient.get(urlRequest).then((response) {
      String responseBody = utf8.decode(response.bodyBytes);
      if (response.statusCode == 200) {
        var map = json.decode(responseBody);
        return VehiclesItem(map);
      }
      throw("code: ${response.statusCode}, message: $responseBody");
    }
    );
  }
}