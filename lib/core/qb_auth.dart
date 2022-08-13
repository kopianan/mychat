import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:quickblox_sdk/auth/module.dart';
import 'package:quickblox_sdk/quickblox_sdk.dart';

class QBAuth {
  Future<Either<String, QBLoginResult>> createUser(
    String login,
    String password,
  ) async {
    try {
      final result = await QB.users.createUser(
        'login',
        'password',
      );
      final loginResult = await QB.auth.login(login, password);
      return Right(loginResult);
    } on PlatformException catch (e) {
      log(e.toString(), name: "CREATE USER");
      return Left(e.code);
    }
  }

  Future<Either<String, QBLoginResult>> loginUser(
    String login,
    String password,
  ) async {
    try {
      QBLoginResult result = await QB.auth.login(login, password);
      return Right(result);
    } on PlatformException catch (e) {
      log(e.toString(), name: "LOGIN USER");
      return Left(e.code);
    }
  }
}
