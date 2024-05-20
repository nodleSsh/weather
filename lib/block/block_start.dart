import 'package:flutter/material.dart';
import 'package:weather/block/weather_widget_home.dart';

class BlockStart extends StatelessWidget {
  const BlockStart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WeatherWidgetHome(),
    );
  }
}