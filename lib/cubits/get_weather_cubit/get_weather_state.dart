part of 'get_weather_cubit.dart';

@immutable
sealed class GetWeatherState {}

final class GetWeatherInitial extends GetWeatherState {}
final class GetWeatherSuccess extends GetWeatherState {
  final WeatherModel weatherModel;
  GetWeatherSuccess(this.weatherModel);
}
final class GetWeatherLoading extends GetWeatherState {}
final class GetWeatherFaileur extends GetWeatherState {}