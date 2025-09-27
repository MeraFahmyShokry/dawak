import 'package:clean_arc/core/data/utill/basic_response.dart';
import 'package:clean_arc/core/data/utill/configration.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/country.dart';
import 'package:clean_arc/features/auth_feature/domain/model/insurance_company.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../core/data/model/base_response/base_response.dart';
import '../../model/item.dart';
import '../../model/user_model/user_model.dart';

part 'registration_remote_data_source.g.dart';

@LazySingleton()
@RestApi(baseUrl: '')
abstract class RegistrationServices {
  @factoryMethod
  factory RegistrationServices(Dio dio, Configuration configuration) {
    return _RegistrationServices(dio, baseUrl: configuration.getApiUrl);
  }

  @GET('Lookup/GetMaritalStatuses')
  Future<BasicResponse<List<Item>?>> getMaritalStatus();

  @GET('Lookup/GetCountries')
  Future<BasicResponse<List<Country>?>> getCountries();

  @GET('InsuranceCompany/GetinsuranceCompanies/getinsuranceCompanies')
  Future<List<InsuranceCompany>?> getCompanies();

  @POST("User/CreateUser")
  @MultiPart()
  Future<BaseResponseModel<UserModel>> register({
    @Body() FormData? formData
  });

}
