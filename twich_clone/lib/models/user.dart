//import 'dart:convert';

class User {
  final String uid;
  final String username;
  final String email;

  User({required this.uid, required this.username, required this.email});

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'] ?? '',
      username: map['username'] ?? '',
      email: map['emai'] ?? '',
    );
  }
  //When you are using json then use these two functions

  // String toJson()=>json.encode(toMap());
  // factory User.fromJson(String source)=>User.fromMap(json.decode(source));
}
