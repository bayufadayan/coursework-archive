void main() {
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);

  print(anotherSet);

  print("========");
  var numberSet = {1, 4, 6};

  // Menambahkan data ke dalam Set.
  numberSet.add(6);
  numberSet.addAll({2, 2, 3});

  print(numberSet);

  print("========");

  numberSet.remove(3);
  print(numberSet);

  print("========");

  print(numberSet.elementAt(2));

  print("========");

  // union dan intersection
   var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print("union: $union"); //gabungan
  print("intersection: $intersection"); //irisan

  
}
