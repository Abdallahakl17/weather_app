// ignore_for_file: non_constant_identifier_names

class ServiesModel {
  String weatherState;
  String date;
  double Temp;
  double maxTemp;
  double minTemp;
  ServiesModel({
    required this.date,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherState,
    required this.Temp,
  });
  factory ServiesModel.fromjosn(dynamic data) {
    var jondata = data['forecast']['forecastday'][0]['day'];
    return ServiesModel(
        date: data['location']['localtime'],
        maxTemp: jondata['maxtemp_c'],
        minTemp: jondata['mintemp_c'],
        weatherState: jondata['condition']['text'],
        Temp: jondata['avgtemp_c']);
  }

}
