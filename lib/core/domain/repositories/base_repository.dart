import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:dartz/dartz.dart';

typedef FutureEitherFailureOrData<T> = Future<Either<Failure, T>> Function();

abstract class BaseRepository {
  Future<Either<Failure, T>> request<T>(FutureEitherFailureOrData<T> body);
}
