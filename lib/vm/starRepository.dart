import 'dart:async';
import 'package:ui_demo_in_flutter/network/Api.dart';
import 'StarShip.dart';

import 'package:flutter/foundation.dart';

abstract class StarRepsitory {
  Future<StarShip> getStartShips(int number);
}

class StarRepositoryImp extends StarRepsitory {

  Api api;

  StarRepositoryImp(this.api);


  @override
  Future<StarShip> getStartShips(int number) {
    return api.retirveStarShip(number)
        .then((dynamic value) {
      debugPrint("Star Ship Received");
          return StarShip.fromJson(value as Map<String,Object>);
    });
  }
}