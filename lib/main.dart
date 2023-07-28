import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/const.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/screens/result_weather.dart';
import 'package:weather_app/screens/servies/share/provider.dart';

import 'screens/search.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.aspectRatio;
    MediaQuery.of(context).size.height;

    return ChangeNotifierProvider(
        create: (context) {
          return providerData();
        },
        child: MaterialApp(
          theme: isligth?themDark:themlight,
          debugShowCheckedModeBanner: false,
          routes: {
            'home': (context) => const HomePage(),
            'searchPage': (context) => SearchPage(),
            'result': (context) => const Result(),
          },
          // initialRoute: 'home',
          initialRoute: 'home',
        ));
  }
}
