import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/features/auth_feature/domain/model/message_model/response_message_model.dart';
import 'package:clean_arc/features/auth_feature/domain/model/profile_details.dart';
import 'package:clean_arc/features/auth_feature/domain/model/user_model/user_model.dart';
import 'package:clean_arc/features/auth_feature/domain/services/remote/login_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../model/user_model/app_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, AppUser>> login({
    required String serialNumberEmail,
    required String password,
  });

  Future<Either<Failure, AppUser?>> getCurrentUser();

  Future<Either<Failure, bool>> forgetPassword({
    required String phoneNumber,
    required String otp,
    required String newPassword,
  });

}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends BaseRepositoryImpl implements AuthRepository {
  final AuthServices _AuthServices;

  AuthRepositoryImpl(super.logger, this._AuthServices);

  @override
  Future<Either<Failure, AppUser>> login({
    required String serialNumberEmail,
    required String password,
  }) {
    return request(() async {
      final result = await _AuthServices.login(
        serialNumberEmail: serialNumberEmail,
        password: password,
        // serialNumberEmail: "docTest",
        // password: "##Doc@123",
      );
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, AppUser?>> getCurrentUser() {
    return request(() async {
      final result = await _AuthServices.getCurrentUser();
      if(result.isFailure??false)
        {
          return Left(BackFailure(message:result.error??"", ));
        }
      return Right(result.value);
    });
  }

  @override
  Future<Either<Failure, bool>> forgetPassword({
    required String phoneNumber,
    required String otp,
    required String newPassword,
  }) {
    return request(() async {
      final result = await _AuthServices.forgetPassword(
        phoneNumber: phoneNumber,
        otp: otp,
        newPassword: newPassword
      );
      if(result.isFailure??false)
      {
        return Left(BackFailure(message:result.error??"", ));
      }
      return Right(result.value??true);
    });
  }

}
