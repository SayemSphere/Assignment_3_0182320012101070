void main() {
  Map<String, String> contacts = {
    'Taha': '0123456',
    'Maha': '0175566',
    'Rafiq': '0157899',
    'Sara': '0134577'
  };

  var keysWithLength4 = contacts.keys.where((key) => key.length == 4);

  print('Keys with length 4:');
  for (var key in keysWithLength4) {
    print(key);
  }
}
