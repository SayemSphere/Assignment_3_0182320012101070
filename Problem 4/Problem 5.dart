void main() {
  List<String> friends = ['Asif', 'Rafi', 'Amin', 'Sayem', 'Borno', 'Anik', 'Taher'];

  var namesStartingWithA = friends.where((name) => name.startsWith('A'));

  print('Friends starting with A:');
  for (var name in namesStartingWithA) {
    print(name);
  }
}
