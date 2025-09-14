import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/utill/configration.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/relevant_patient/domain/model/patient_relevant_patient_model/patient_relevant_patient_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'patien_remote_data_source.g.dart';

@LazySingleton()
@RestApi(baseUrl: '')
abstract class PatientServices {
  @factoryMethod
  factory PatientServices(Dio dio, Configuration configuration) {
    return _PatientServices(dio, baseUrl: configuration.getApiUrl);
  }

  @GET('PatientRelevant/GetAllPatientRelevantByPatientId?')
  Future<PaginatedList<PatientRelevantPatientModel>> getRelevantPatient({
    @Query('PatientId') String? patientId,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });
}
