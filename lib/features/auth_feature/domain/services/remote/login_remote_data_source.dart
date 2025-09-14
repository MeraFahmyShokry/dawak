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



  @POST('profiles/token/refresh/')
  Future<BaseResponseModel> refreshToken({
    @Field('refresh') required String refreshToken,
   });

  // @POST('profiles/login/')
  // Future<DoctorModel> refreshToken({
  //   @Field('id_number') required String refreshToken,
  //   @Field('password') required String password,
  // });

  @override
  @POST('api/auth/change-password')
  Future<BaseResponseModel<MessageModel>> changePassword({
    @Field('driver_id') required String driverId,
    @Field('current_password') required String oldPassword,
    @Field('password') required String newPassword,
    @Field('password_confirmation') required String confirmPassword,
  });

  @override
  @POST('api/auth/reset-password')
  Future<BaseResponseModel<MessageModel>> forgetPassword({
    @Field('phone') required String phone,
  });

  @override
  @POST('/user/signup')
  Future<BaseResponseModel<UserModel>> register({
    @Field('phone') required String? phone,
    @Field('email') required String? email,
    @Field('name') required String? userName,
    @Field('address') required String? address,
    @Field('country') required String? country,
    @Field('national_Id') required String? nationalId,
    @Field('password') required String? password,
    @Field('password_confirmation') required String? passwordConfirmation,
  });



  @GET('profiles/profile/')
  Future<BaseResponseModel<UserProfileDetails>> getProfileData();
}
