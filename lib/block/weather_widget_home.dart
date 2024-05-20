import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather/resources/resources.dart';
import 'package:weather/response/response_weather.dart';

class WeatherData {
  String name;
  int temp;
  WeatherData(this.name, this.temp);
}

Future sendRequest() async {
  final respResult = await request();
  final weatherMap = Weather.fromJson(respResult as Map<String, dynamic>);
  return weatherMap;
}

class WeatherWidgetHome extends StatefulWidget {
  String name;
  int temp;
  WeatherWidgetHome(this.name, this.temp, {super.key});

  @override
  State<WeatherWidgetHome> createState() => _WeatherWidgetHomeState();
}

class _WeatherWidgetHomeState extends State<WeatherWidgetHome> {
  @override
  Widget build(BuildContext context) {
    // Future sendRequest() async {
    //   final respResult = await request();
    //   final weatherMap = Weather.fromJson(respResult as Map<String, dynamic>);
    // 

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 204, 210, 220),
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: Offset(3, 0),
                    )
                  ]),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image(image: AssetImage(AppImages.msk)),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Moscow',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color(0xFF161A30),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Monday, May 17',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 139, 143, 150),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '20℃',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
