import 'package:flutter/material.dart';

class StarShip{

  String maxAtmospheringSpeed;
  String cargoCapacity;
  String passengers;
  String edited;
  String consumables;
  String mglt;

  String length;
  String starshipClass;
  String url;
  String manufacturer;
  String crew;
  String hyperdriveRating;
  String costInCredits;
  String name;
  String model;

  StarShip();


  factory StarShip.fromJson(Map<String,Object> map){
    return new StarShip()
    ..maxAtmospheringSpeed = map['maxAtmospheringSpeed'] as String
    ..cargoCapacity = map['cargoCapacity'] as String
    ..passengers = map['passengers'] as String
    ..edited = map['edited'] as String
    ..consumables = map['consumables'] as String
    ..starshipClass = map['starshipClass'] as String
    ..maxAtmospheringSpeed = map['maxAtmospheringSpeed'] as String
    ..manufacturer = map['manufacturer'] as String
    ..crew = map['crew'] as String
    ;

  }



}