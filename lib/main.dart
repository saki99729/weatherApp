import 'package:flutter/material.dart';
import 'package:weatherapp/model/weather_data_model.dart';
import 'package:weatherapp/service/weather_api_client.dart';
import 'package:weatherapp/views/additional_information.dart';
import 'package:weatherapp/views/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  weatherApiClient client = weatherApiClient();
  weather? data;

  Future<void> getData() async {
    data = await client.getcurrentweather("Anuradhapura");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Weather App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
        // backgroundColor: const Color(0xFFf9f9f9),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  currentWeather(
                      Icons.sunny, "${data!.temp}°F", "${data!.cityname}"),
                  const SizedBox(
                    height: 60.0,
                  ),
                  const Text(
                    "Additional Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  additionalinformation("${data!.wind}", "${data!.humidity}",
                      "${data!.pressure}", "${data!.feelsLike}°F"),

                  //Api connection
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container();
          },
        ));
  }
}
