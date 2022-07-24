import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twich_clone/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    email: '',
    uid: '',
    username: '',
  );
  
  User get user=>_user;

  setUser(User user){
    _user = user;
    notifyListeners();
  }

}
