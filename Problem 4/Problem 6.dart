void main() {
  Map<String, dynamic> person = {
    'name': 'Abu Taher Sayem',
    'address': 'Dhaka',
    'age': 22,
    'country': 'Bangladesh'
  };

  // Update country
  person['country'] = 'Canada';

  print('Person Details:');
  person.forEach((key, value) {
    print('$key: $value');
  });
}
