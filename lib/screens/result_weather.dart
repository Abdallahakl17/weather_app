import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'servies/share/provider.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    var weather = Provider.of<providerData>(context).serviesModel;

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green, Color.fromRGBO(64, 143, 207, 1)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            Provider.of<providerData>(context).cityname!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          const Spacer(),
          Text('UpDate: ${weather!.date}',
              style:
                  const TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  'http://cdn.weatherapi.com/weather/64x64/night/116.png'),
              Text('${weather.Temp.toInt()}',
                  style: const TextStyle(fontSize: 30)),
              Column(
                children: [
                  Text('MaxTemp: ${weather.maxTemp.toInt()}',
                      style: const TextStyle(fontSize: 20)),
                  Text('MinTemp: ${weather.minTemp.toInt()}',
                      style: const TextStyle(fontSize: 20)),
                ],
              )
            ],
          ),
          const Spacer(),
          Text(weather.weatherState,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 32)),
          const Spacer(
            flex: 3,
          )
        ],
      ),
    ));
  }
}
