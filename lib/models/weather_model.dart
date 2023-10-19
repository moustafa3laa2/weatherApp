class WeatherModel {
  final String cityName;
  final DateTime lastUpdate;
  final String image;
  final double avgTemp;
  final double maxTemp;
  final double minTemp;
  final String state;
  WeatherModel(
      {required this.cityName,
      required this.lastUpdate,
      required this.image,
      required this.avgTemp,
      required this.maxTemp,
      required this.minTemp,
      required this.state});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      lastUpdate: DateTime.parse(json['current']['last_updated']),
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      state: json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
