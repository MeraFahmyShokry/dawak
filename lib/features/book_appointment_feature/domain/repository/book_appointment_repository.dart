import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/features/auth_feature/domain/model/message_model/response_message_model.dart';
import 'package:clean_arc/features/auth_feature/domain/model/profile_details.dart';
import 'package:clean_arc/features/auth_feature/domain/model/user_model/user_model.dart';
import 'package:clean_arc/features/auth_feature/domain/services/remote/login_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  // Future<Either<Failure, UserModel>> login({
  //   required serialNumberEmail,
  //   required password,
  // });

  Future<Either<Failure, MessageModel>> changePassword({
    required String driverId,
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  });

  Future<Either<Failure, MessageModel>> forgetPassword({
    required String phone,
  });

  Future<Either<Failure, BaseResponseModel<UserModel>>> register({
    required String? phone,
    required String? email,
    required String? userName,
    required String? address,
    required String? country,
    required String? nationalId,
    required String? password,
    required String? passwordConfirmation,
  });

  Future<Either<Failure, BaseResponseModel>> refreshToken({
    required String refreshToken,
  });
  Future<Either<Failure, BaseResponseModel<UserProfileDetails>>> getProfileData();

}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends BaseRepositoryImpl implements AuthRepository {
  final AuthServices _AuthServices;

  AuthRepositoryImpl(super.logger, this._AuthServices);

  // @override
  // Future<Either<Failure, UserModel>> login({
  //   required serialNumberEmail,
  //   required password,
  // }) {
  //   return request(() async {
  //     final result = await _AuthServices.login(
  //       // serialNumberEmail: serialNumberEmail,
  //       // password: password,
  //       serialNumberEmail: "docTest",
  //       password: "##Doc@123",
  //     );
  //     return Right(result);
  //   });
  // }

  @override
  Future<Either<Failure, MessageModel>> changePassword(
      {required String driverId,
      required String oldPassword,
      required String newPassword,
      required String confirmPassword}) {
    return request(() async {
      final result = await _AuthServices.changePassword(
        driverId: driverId,
        oldPassword: oldPassword,
        newPassword: newPassword,
        confirmPassword: confirmPassword,
      );
      print("result.dataresult.dataresult.domain ${result.value}");
      return Right(result.value!);
    });
  }

  @override
  Future<Either<Failure, MessageModel>> forgetPassword({
    required String phone,
  }) {
    return request(() async {
      final result = await _AuthServices.forgetPassword(
        phone: phone,
      );
      print("result.dataresult.dataresult.domain ${result.value}");
      return Right(result.value!);
    });
  }

  @override
  Future<Either<Failure, BaseResponseModel<UserModel>>> register({
    String? phone,
    String? email,
    String? userName,
    String? address,
    String? country,
    String? nationalId,
    String? password,
    String? passwordConfirmation,
  }) async {
    return request(() async {
      final result = await _AuthServices.register(
          phone: phone,
          email: email,
          userName: userName,
          address: address,
          country: country,
          nationalId: nationalId,
          password: password,
          passwordConfirmation: passwordConfirmation);
      return Right(result);
    });
  }




  @override
  Future<Either<Failure, BaseResponseModel>> refreshToken({
    required String refreshToken,
  }) {
    return request(() async {
      final result = await _AuthServices.refreshToken(
        refreshToken: refreshToken,
      );
      return Right(result);
    });
  }


  @override
  Future<Either<Failure, BaseResponseModel<UserProfileDetails>>> getProfileData() async {
    return request(() async {
      final result = await _AuthServices.getProfileData();
      return Right(result);
    });
  }


}
