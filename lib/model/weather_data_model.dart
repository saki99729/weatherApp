// ignore: camel_case_types
class weather {
  String? cityname;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  int? pressure;

  weather(
      {this.cityname,
      this.temp,
      this.wind,
      this.humidity,
      this.feelsLike,
      this.pressure});

  weather.fromJson(Map<String, dynamic> json) {
    cityname = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    feelsLike = json["main"]["feels_like"];
    pressure = json["main"]["pressure"];
  }
}
