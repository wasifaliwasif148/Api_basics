import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class LocationScreen extends StatefulWidget {
  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  var locationData;

  fetchWeatherByCity() async {
    var data = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=lahore&appid=b76a828f886561484ade9beeaa3aa3ce"));
    //  print(jsonDecode(data.body).runtimeType);
    locationData = jsonDecode(data.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          locationData == null
              ? CircularProgressIndicator.adaptive()
              : Text(
                  "${(locationData['main']['temp'] - 273).round()}°C",
                  style: TextStyle(fontSize: 100),
                ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                fetchWeatherByCity();
              },
              child: Text("GET LOCATION"))
        ],
      ),
    ));
  }
}
