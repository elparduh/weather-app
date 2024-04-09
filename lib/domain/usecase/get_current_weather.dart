import 'package:dartz/dartz.dart';
import 'package:weather_app/core/failure.dart';
import 'package:weather_app/domain/entity/weather.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase {
  final WeatherRepository weatherRepository;

  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure,Weather>> execute(String cityName) {
    return weatherRepository.getCurrentWeather(cityName);
  }
}