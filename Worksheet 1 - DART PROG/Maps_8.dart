void main() {
  Map<String, dynamic> person = {
    'name': 'Joginder',
    'age': 25,
    'city': 'New York',
  };
  print("Initial Map: $person");
  person['country'] = 'USA';
  person['age'] = 26;
  print("Updated Map: $person");
}
