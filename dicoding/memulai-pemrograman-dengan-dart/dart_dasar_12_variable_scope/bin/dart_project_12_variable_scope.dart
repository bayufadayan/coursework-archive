void main() {
  var isAvailableForDiscount = true;
  var price = 300000;
  num discount = 0;
  if (isAvailableForDiscount) {
    discount = 10 / 100 * price;
  }
  print('You need to pay: ${price - discount}');

  var price2 = 300000;
  var discount2 = checkDiscount(price2);
  print('You need to pay: ${price2 - discount2}');
}

num checkDiscount(num price) {
  num discount = 0;    
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}