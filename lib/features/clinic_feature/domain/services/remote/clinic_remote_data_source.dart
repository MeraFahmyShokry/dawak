import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/utill/configration.dart';
import 'package:clean_arc/core/presentation/cubit/general_state.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/avilable_time_model/avilable_clinic_time.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/clinic_model/doctor_model.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/doctor_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'clinic_remote_data_source.g.dart';

@LazySingleton()
@RestApi(baseUrl: '')
abstract class ClinicsServices {
  @factoryMethod
  factory ClinicsServices(Dio dio, Configuration configuration) {
    return _ClinicsServices(dio, baseUrl: configuration.getApiUrl);
  }

  @GET('User/GetAboutClinic/{id}')
  Future<BaseResponseModel<ClinicDetailsModel>> getClinicDetailsById({
    @Path('id') required String id,
  });

  @GET('Clinic/GetAllClinics?')
  Future<PaginatedList<ClinicModel>> getClinics({
    @Query('DoctorId') String? doctorId,
    @Query('AssistantId') String? assistantId,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  @GET('Clinic/GetAvailableAppointments/{clinicId}')
  Future<List<AvailableTimeForAppointments>>
      getAvailableTimeForAppointments({
    @Path('clinicId') String? clinicId,
  });
}
