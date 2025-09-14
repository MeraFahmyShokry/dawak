import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/utill/configration.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/message_model/response_message_model.dart';
import 'package:clean_arc/features/auth_feature/domain/model/profile_details.dart';
import 'package:clean_arc/features/auth_feature/domain/model/user_model/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'book_appointment_remote_data_source.g.dart';

@LazySingleton()
@RestApi(baseUrl: '')
abstract class BookAppointmentServices {
  @factoryMethod
  factory BookAppointmentServices(Dio dio, Configuration configuration) {
    return _BookAppointmentServices(dio, baseUrl: configuration.getApiUrl);
  }

  @POST('Account/BookAppointmententicate')
  Future<BaseResponseModel> bookAppointment({
    @Field('userName') required String serialNumberEmail,
    @Field('password') required String password,
  });

}
