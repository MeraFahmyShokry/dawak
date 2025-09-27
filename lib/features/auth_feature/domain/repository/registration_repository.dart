import 'dart:convert';
import 'dart:developer';

import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/features/auth_feature/domain/model/country.dart';
import 'package:clean_arc/features/auth_feature/domain/model/item.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/model/base_response/base_response.dart';
import '../../../../core/utils_package/utils_package.dart';
import '../model/insurance_company.dart';
import '../model/registration_model.dart';
import '../model/user_model/user_model.dart';
import '../services/remote/registration_remote_data_source.dart';


abstract class RegistrationRepository {

  Future<Either<Failure, List<Item>?>> getMaritalStatus();

  Future<Either<Failure, List<Country>?>> getCountries();

  Future<Either<Failure, List<InsuranceCompany>?>> getCompanies();

  Future<Either<Failure, BaseResponseModel<UserModel>>> register({
    UserDto? userDto
  });

}

@LazySingleton(as: RegistrationRepository)
class RegistrationRepositoryImpl extends BaseRepositoryImpl implements RegistrationRepository {
  final RegistrationServices _RegistrationServices;

  RegistrationRepositoryImpl(super.logger, this._RegistrationServices);

  @override
  Future<Either<Failure, List<Item>?>> getMaritalStatus() {
    return request(() async {
      final result = await _RegistrationServices.getMaritalStatus();
      if(result.isFailure??false)
      {
        return Left(BackFailure(message:result.error??"", ));
      }
      return Right(result.value);
    });
  }

  @override
  Future<Either<Failure, List<Country>?>> getCountries() {
    return request(() async {
      final result = await _RegistrationServices.getCountries();
      if(result.isFailure??false)
      {
        return Left(BackFailure(message:result.error??"", ));
      }
      return Right(result.value);
    });
  }

  @override
  Future<Either<Failure, List<InsuranceCompany>?>> getCompanies() {
    return request(() async {
      final result = await _RegistrationServices.getCompanies();
      // if(result.isFailure??false)
      // {
      //   return Left(BackFailure(message:result.error??"", ));
      // }
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, BaseResponseModel<UserModel>>> register({
    UserDto? userDto
  }) async {
    return request(() async {
      var data =FormData.fromMap(userDto?.toJson()??UserDto().toJson());
      final result = await _RegistrationServices.register(
        formData: data
        // isAcceptHomeVisit: userDto?.isAcceptHomeVisit,
        // experienceYear: userDto?.experienceYear,
        // email: userDto?.email,
        // name: userDto?.name,
        // specialistId: userDto?.specialistId,
        // nationalId: userDto?.nationalId,
        // maritalStatus: userDto?.maritalStatus,
        // profileDescription: userDto?.profileDescription,
        // userName: userDto?.userName,
        // password: userDto?.password,
        // genderId: userDto?.genderId,
        // countryId: userDto?.countryId,
        // insuranceCompanyId: userDto?.insuranceCompanyId,
        // userTypeId: userDto?.userTypeId,
        // phoneNumber: userDto?.phoneNumber,
        // dob: userDto?.dob, // should be formatted as yyyy-MM-dd
        // // address
        // street: userDto?.addressDto?.street,
        // city: userDto?.addressDto?.city,
        // postalCode: userDto?.addressDto?.postalCode,
        // addressCountryId: userDto?.addressDto?.countryId,
        // country: userDto?.addressDto?.country,
        // latitude: userDto?.addressDto?.latitude,
        // longitude: userDto?.addressDto?.longitude,
        // // files
        // photo: userDto?.photo,
        // certificate: userDto?.certificatePath,
        // syndicateCard: userDto?.syndicateCardPath,
      );
      return Right(result);
    });
  }
}
