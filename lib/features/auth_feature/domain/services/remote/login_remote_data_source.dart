import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/utill/basic_response.dart';
import 'package:clean_arc/core/data/utill/configration.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/message_model/response_message_model.dart';
import 'package:clean_arc/features/auth_feature/domain/model/profile_details.dart';
import 'package:clean_arc/features/auth_feature/domain/model/user_model/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../model/user_model/app_user.dart';

part 'login_remote_data_source.g.dart';

@LazySingleton()
@RestApi(baseUrl: '')
abstract class AuthServices {
  @factoryMethod
  factory AuthServices(Dio dio, Configuration configuration) {
    return _AuthServices(dio, baseUrl: configuration.getApiUrl);
  }

  @POST('Account/Authenticate')
  Future<AppUser> login({
    @Field('userName') required String serialNumberEmail,
    @Field('password') required String password,
  });

  @GET('User/GetCurrentUser')
  Future<BasicResponse<AppUser>> getCurrentUser();


  @POST('Account/ForgetPassword')
  Future<BasicResponse<bool?>> forgetPassword({
    @Query('phonenumber') required String phoneNumber,
    @Query('newPassword') required String newPassword,
    @Query('otp') required String otp,
  });

}
