void main() {
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.orange.index);
  print(Rainbow.blue.name);

  var weatherForecast = Weather.cloudy;

  switch (weatherForecast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }

  print(weatherForecast);

  // Output Weather2 with a custom toString method
  var weatherForecast2 = Weather2.sunny;
  print(weatherForecast2);  // Output: Today's weather forecast is sunny with a 15% chance of rain
}

enum Rainbow { red, orange, yellow, green, blue, indigo, violet }

enum Weather { sunny, cloudy, rain, storm }

enum Weather2 {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  // Constructor for the Weather2 enum
  const Weather2(this.rainAmount);

  // Override toString to provide custom output
  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}
