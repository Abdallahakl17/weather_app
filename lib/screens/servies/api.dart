import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/screens/servies/class_weather_model.dart';

class WeatherModel {
  Future<ServiesModel> getData({required String cityName}) async {
    String baseurl = 'http://api.weatherapi.com/v1';
    String apiKey = ' f24888ce8b2a442bab005730232704';
    Uri url =
        Uri.parse('$baseurl/forecast.json?key=$apiKey&q=$cityName&days=7');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    ServiesModel serviesModel = ServiesModel.fromjosn(data);
    return serviesModel;
  }
}
