import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:sp_class/validator.dart';

class Bloc extends Object with Validaor implements BaseCloc {
  final _login = BehaviorSubject<String>();
  //Getter

   Stream<String>get loginEmail=>_login.stream.transform(emailValidator);

//getter

  Function(String)get changeEmail=>_login.sink.add;
  
  @override
  void dispose() {
    _login?.close();
  }
}

abstract class BaseCloc {
  void dispose();
}
