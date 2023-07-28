// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/const.dart';
import 'package:weather_app/screens/servies/api.dart';
import 'package:weather_app/screens/servies/class_weather_model.dart';

import 'servies/share/provider.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: const Text('Search a city'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(30),
                suffix: Icon(Icons.search),
                hintText: 'Enter your City'),
            onSubmitted: (data) async {
              cityName = data;
              WeatherModel weather = WeatherModel();
              ServiesModel weatermode =
                  await weather.getData(cityName: cityName!);
              Provider.of<providerData>(context, listen: false).weatherdataa =
                  weatermode;
              Provider.of<providerData>(context, listen: false).cityname =
                  cityName;

              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
