part of 'login_bloc.dart';

//@immutable //delete
sealed class LoginState {
  final int count; //Error ctrl+. to create constructor
  //ຫຼັກການ MVVM ຄືຫ້າມ interfeer ຕົວປ່ຽນ ຫ້າມແຊກແຊງຄ່າຕົວແປ

  LoginState({required this.count});
}

//final class LoginInitial extends LoginState {} //delete
