void main() {
  var i = 1;

  while (i <= 100) {
    print(i);
    i++;
  }

  print("==========");

  i = 1;

  do {
    print(i);
    i++;
  } while (i <= 100);

  print("==========");

  var j = 10;

  while (j > 0) {
    print("*"*j);
    j--;
  }


}