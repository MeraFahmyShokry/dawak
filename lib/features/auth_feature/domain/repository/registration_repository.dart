import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/features/auth_feature/domain/model/country.dart';
import 'package:clean_arc/features/auth_feature/domain/model/item.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../model/insurance_company.dart';
import '../services/remote/registration_remote_data_source.dart';


abstract class RegistrationRepository {

  Future<Either<Failure, List<Item>?>> getMaritalStatus();

  Future<Either<Failure, List<Country>?>> getCountries();

  Future<Either<Failure, List<InsuranceCompany>?>> getCompanies();
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
}
