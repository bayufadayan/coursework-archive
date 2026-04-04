void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital['Jakarta']);

  print("============");
  var mapKeys = capital.keys;
  print("mapKeys: $mapKeys");

  var mapValues = capital.values;
  print("mapValues: $mapValues");

  print("============");
  // menambahkan key
  capital['New Delhi'] = 'India';

  print(capital);

  print("============");

}