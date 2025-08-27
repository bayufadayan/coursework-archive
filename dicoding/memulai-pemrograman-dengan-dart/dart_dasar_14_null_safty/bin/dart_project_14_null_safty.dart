void main() {
  String? favoriteFood = 'Mie Ayam';
    
  buyAMeal(favoriteFood!);      // disematkan bang operator supaya mengembalikan nilai non-null
}
 
void buyAMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}