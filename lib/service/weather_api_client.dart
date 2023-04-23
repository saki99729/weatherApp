import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/model/weather_data_model.dart';

class weatherApiClient {
  Future<weather>? getcurrentweather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=8a8cd68a87cc5f51bd09f5d8accb0934&unit=metrics");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(weather.fromJson(body).cityname);
    return weather.fromJson(body);
  }
}
