// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:weather_app/screens/servies/class_weather_model.dart';

class providerData extends ChangeNotifier {
  ServiesModel? _serviesModel;
  String? cityname;
  set weatherdataa(ServiesModel? sevies) {
    _serviesModel = sevies;
    notifyListeners();
  }

  ServiesModel? get serviesModel => _serviesModel;
}
