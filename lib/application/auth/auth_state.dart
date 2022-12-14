part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {}

class UnAuthenticated extends AuthState {}

class OnLoading extends AuthState {}

class OnError extends AuthState {}
