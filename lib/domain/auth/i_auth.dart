import 'package:dartz/dartz.dart';
import 'package:quickblox_sdk/auth/module.dart';

abstract class IAuth {
  Future<Either<String, QBLoginResult>> loginUser(
      String login, String password);
  Future<Either<String, QBLoginResult>> createUser(
      String login, String password);
}
