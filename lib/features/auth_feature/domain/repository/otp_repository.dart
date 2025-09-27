import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/features/auth_feature/domain/model/country.dart';
import 'package:clean_arc/features/auth_feature/domain/model/item.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../model/insurance_company.dart';
import '../services/remote/otp_remote_data_source.dart';
import '../services/remote/registration_remote_data_source.dart';


abstract class OtpRepository {

  Future<Either<Failure, bool>> sendOtp({required String phoneNumber});

  Future<Either<Failure, bool>> validateOtp({required String phoneNumber, required String otp});
}

@LazySingleton(as: OtpRepository)
class OtpRepositoryImpl extends BaseRepositoryImpl implements OtpRepository {
  final OtpServices _OtpServices;

  OtpRepositoryImpl(super.logger, this._OtpServices);

  @override
  Future<Either<Failure, bool>> sendOtp({required String phoneNumber}) {
    return request(() async {
      final result = await _OtpServices.sendOtp(phoneNumber: phoneNumber);
      if(result.isFailure??false)
      {
        return Left(BackFailure(message:result.error??"", ));
      }
      return Right(true);
    });
  }

  @override
  Future<Either<Failure, bool>> validateOtp({required String phoneNumber, required String otp}) {
    return request(() async {
      final result = await _OtpServices.validateOtp(phoneNumber: phoneNumber,otp: otp);
      if(result.isFailure??false)
      {
        return Left(BackFailure(message:result.error??"", ));
      }
      ///replace with value
      return Right(true);
      // return Right(result.value??false);
    });
  }

}
