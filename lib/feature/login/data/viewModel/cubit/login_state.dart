part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class Loginloading extends LoginState {}
final class Loginfaluire extends LoginState {}
final class LoginSuccess extends LoginState {}
