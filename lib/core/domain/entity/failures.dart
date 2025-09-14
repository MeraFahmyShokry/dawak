import 'package:clean_arc/core/domain/entity/enums/server_error_code.dart';

abstract class Failure {}


class BackFailure implements Failure {
  final String message;

  BackFailure({ this.message = ''});
}


class ServerFailure implements Failure {
  final ServerErrorCode errorCode;
  final String message;

  ServerFailure({required this.errorCode, this.message = ''});
}

class NetworkFailure implements Failure {
  final bool connectionTimeOut;

  NetworkFailure({this.connectionTimeOut = false});
}

class LocalAuthFailure implements Failure {}

class EmptyFailure implements Failure {}
