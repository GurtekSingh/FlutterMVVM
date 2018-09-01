import 'network.dart';
import 'dart:async';

class Api {

  NetworkUtil _network;

  Api(this._network);


  Future<dynamic> retirveStarShip(int startShipNumber) {
   return  _network.get("starships/$startShipNumber/");
  }


}