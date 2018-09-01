import 'dart:async';
import 'starRepository.dart';
import 'package:rxdart/rxdart.dart';
import 'StarShip.dart';
import 'package:flutter/foundation.dart';

class StarViewModell {

  bool isLoading = false;

  StarViewModell(this._repsitory){

    _observeStarShipRequest();

  }

  StarRepsitory _repsitory;

  StreamController<int> _starshipstream = StreamController<int>();

  final _startship = BehaviorSubject<StarShip>();

  Stream<StarShip> get ships => _startship.stream;

  Sink<int> get startship => _starshipstream.sink;


  _observeStarShipRequest() {
    _starshipstream.stream.listen((shipNumber) {

      isLoading = true;

      _repsitory.getStartShips(shipNumber)
          .then((StarShip ship) {
        debugPrint("Star Ship Request$shipNumber");
        isLoading = false;
        _startship.add(ship);
      });
    });
  }

  dispose() {
    _starshipstream.close();
    _startship.close();
  }


}
