import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/const.dart';

import 'result_weather.dart';
import 'servies/share/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var weathe = Provider.of<providerData>(context).serviesModel;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: appbarColor,
          title: const Text('Weather App'),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'searchPage');
                    },
                    icon: const Icon(Icons.search)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isligth =!isligth ;
                    });
                  },
                  icon: Icon(isligth ? iconDark:iconLigth),
                )
              ],
            ),
          ],
        ),
        body: weathe == null
            ? const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'there is no weather 😔 start',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'searching now 🔍',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )
                  ],
                ),
              )
            : const Result());
  }
}
