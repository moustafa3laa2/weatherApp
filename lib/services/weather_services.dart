import 'package:dio/dio.dart';
import 'package:my_weather_app/models/weather_model.dart';

class WeatherServices {
  final dio;
  WeatherServices(this.dio);
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'ad609b8e282a4b6bbdb225701233009';
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops There Was An Error , Try Later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Oops There Was An Error , Try Later');
    }
  }
}
