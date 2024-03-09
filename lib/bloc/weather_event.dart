part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeatherByLocation extends WeatherEvent {
  final Position position;

  const FetchWeatherByLocation(this.position);

  @override
  List<Object> get props => [position];
}
