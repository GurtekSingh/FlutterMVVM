import 'package:ui_demo_in_flutter/vm/StarViewModel.dart';
import 'package:ui_demo_in_flutter/vm/starRepository.dart';
import 'package:ui_demo_in_flutter/network/Api.dart';
import 'package:ui_demo_in_flutter/network/network.dart';

class Injection {
  static Injection instance = Injection._internal();

  Injection._internal();

  factory Injection() => instance;

  StarViewModell injectScopeViewModel() {
    return StarViewModell(provideStartRepository());
  }

  StarRepsitory provideStartRepository() {
    return StarRepositoryImp(provideApi());
  }

  Api provideApi() {
    return Api(NetworkUtil("https://swapi.co/api/"));
  }
}
