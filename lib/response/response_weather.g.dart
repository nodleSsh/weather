// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      json['name'] as String,
      Main.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'name': instance.name,
      'main': instance.main,
    };
