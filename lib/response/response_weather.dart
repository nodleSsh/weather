import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'adress.dart';
part 'response_weather.g.dart';

// void main() async {
//   var respResult = await request();

//   final weatheMap = Weather.fromJson(respResult as Map<String, dynamic>);
//   print(weatheMap.main.temp);
//   print(weatheMap.name);
// }

@JsonSerializable(explicitToJson: true)
class Weather {
  String name;
  Main main;
  Weather(this.name, this.main);

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

Future<Map<String, dynamic>?> request() async {
  final dio = Dio();
  const String lat = '55.7522200';
  const String lon = '37.6155600';
  const String apiKey = 'be4804a3da738b315f6ee32d9ea38ba7';
  final respons = await dio.get<Map<String, dynamic>>(
      'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey');
  return respons.data;
}

// void sendRequest() async {
//   final respResult = await request();
//   final weatherMap = Weather.fromJson(respResult as Map<String, dynamic>);
// }

// var respResult = request();

// final weatheMap = Weather.fromJson(respResult as Map<String, dynamic>);
