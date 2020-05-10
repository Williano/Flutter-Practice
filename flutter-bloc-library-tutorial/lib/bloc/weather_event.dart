part of 'weather_bloc.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class GetWeather extends WeatherEvent {
  final String cityName;

  const GetWeather(this.cityName);

  @override
  List<Object> get props => [cityName];

  @override
  String toString() {
    String status = "Weather retrieved";
    return status;
  }
}

class GetDetailedWeather extends WeatherEvent {
  final String cityName;

  const GetDetailedWeather(this.cityName);

  @override
  List<Object> get props => [cityName];

  @override
  String toString() {
    String status = "Weather Detailed retrieved";
    return status;
  }
}
