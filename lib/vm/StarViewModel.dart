import 'dart:async';
import 'starRepository.dart';
import 'package:rxdart/rxdart.dart';
import 'StarShip.dart';


class StarViewModel {
  StarRepsitory repsitory;
  StreamController<int> _starshipstream;

  StarViewModel(this.repsitory, this._starshipstream) {}

  Sink<int> get startship => _starshipstream.sink;

 final _startship = BehaviorSubject();


}
