// ignore_for_file: unused_local_variable

void main(List<String> arguments) {
  List<int> numberList = [1, 2, 3, 4, 5];

  var numberList2 = [1, 2, 3, 4, 5];
  var stringList = ['Hello', 'Dicoding', 'Dart'];

  List dynamicList = [1, 'Dicoding', true];
  print(dynamicList.runtimeType);
  print(dynamicList[1]);

  print("===========");
  for (int i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }

  print("===========");
  stringList.forEach((s) => print(s));
  // Mekanisme di atas dikenal sebagai lambda atau anonymous function

  print("===========");
  stringList.add('Flutter');

  print(stringList);

  print("===========");
  stringList.insert(0, 'Programming');
  print(stringList);

  print("===========");
  stringList[1] = 'Application';
  print(stringList);
  stringList.remove('Programming');
  print(stringList);
  stringList.removeAt(1);
  print(stringList);
  stringList.removeLast();
  print(stringList);
  stringList.removeRange(0, 2);
  print(stringList);

  print("===========");

  // Spread Operator
  ///Sesuai namanya “spread”, fitur ini digunakan untuk menyebarkan nilai di dalam
  ///collections menjadi beberapa elemen.
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [favorites, others];
  print(allFavorites);

  var allFavorites2 = [...favorites, ...others];
  print(allFavorites2);


  print("===========");

  // null-aware spread operator (...?)
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list2);
}
