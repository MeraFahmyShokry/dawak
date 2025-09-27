import 'package:clean_arc/core/data/utill/basic_response.dart';
import 'package:clean_arc/core/data/utill/configration.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/country.dart';
import 'package:clean_arc/features/auth_feature/domain/model/insurance_company.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/item.dart';

part 'otp_remote_data_source.g.dart';

@LazySingleton()
@RestApi(baseUrl: '')
abstract class OtpServices {
  @factoryMethod
  factory OtpServices(Dio dio, Configuration configuration) {
    return _OtpServices(dio, baseUrl: configuration.getApiUrl);
  }

  @POST('Account/SendOtp')
  Future<BasicResponse<String?>> sendOtp({
    @Query('phonenumber') required String phoneNumber,
  });

  @POST('Account/OTPValidation')
  Future<BasicResponse<bool>> validateOtp({
    @Query('phonenumber') required String phoneNumber,
    @Query('otp') required String otp,
  });

}
