import 'package:dartz/dartz.dart';
import 'package:weather_app/core/failure.dart';
import 'package:weather_app/domain/entity/weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure,Weather>> getCurrentWeather(String cityName);
}