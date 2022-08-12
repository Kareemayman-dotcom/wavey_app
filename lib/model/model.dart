class AddUser {
  String email;
  String password;
  AddUser({required this.email, required this.password});

  Map<String, dynamic> toMap() {
    return {'email': this.email, 'password': this.password};
  }

  factory AddUser.fromMap(Map<String, dynamic> map) {
    return AddUser(
        email: map['email'] as String, password: map['password'] as String);
  }
}
