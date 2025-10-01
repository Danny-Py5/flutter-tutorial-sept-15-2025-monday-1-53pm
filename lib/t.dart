void main() {
  final User user = User.fromJson({
    'name': 'daniel',
    'email': 'email@email.com',
    'password': '1234',
  });
  print(user.name);
}

class User {
  String name;
  String email;
  String password;

  User({required this.name, required this.email, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        "name": String name,
        "email": String email,
        "password": String password,
      } =>
        User(name: name, email: email, password: password),
      _ => throw const FormatException('Invalid JSON: Empty map'),
    };
  }
}
