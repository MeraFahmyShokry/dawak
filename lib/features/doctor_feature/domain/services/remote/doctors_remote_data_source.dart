import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/utill/configration.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_complaints_model/doctor_complaints_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_details_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/specialists_model/specialists_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/top_review_doctors_model/top_doctors_review.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'doctors_remote_data_source.g.dart';

@LazySingleton()
@RestApi(baseUrl: '')
abstract class DoctorsServices {
  @factoryMethod
  factory DoctorsServices(Dio dio, Configuration configuration) {
    return _DoctorsServices(dio, baseUrl: configuration.getApiUrl);
  }

  @GET('Specialist/GetAllSpecialist')
  Future<PaginatedList<SpecialistsModel>> getAllSpecialist({
    @Query('LanguageId') int? languageId,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('OrderBy') String? orderBy,
    @Query('SortDir') String? sortDir,
  });

  @GET('Review/GetAllDoctorReviews')
  Future<PaginatedList<TopDoctorsReview>> getAllDoctorReviews({
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
    @Query('OrderBy') String? orderBy,
    @Query('SortDir') String? sortDir,
  });

  @GET('User/GetAboutDoctor/{id}')
  Future<BaseResponseModel<DoctorDetailsModel>> getDoctorDetailsById({
    @Path('id') required String id,
  });

  @GET('/User/GetDoctors?')
  Future<PaginatedList<DoctorModel>> getDoctors({
    @Query('SpecialistId') int? specialistId,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });

  @GET('/Complains/GetAllDoctorComplains?')
  Future<PaginatedList<DoctorComplaintsModel>> getAllDoctorComplaints({
    @Query('SpecialistId') int? specialistId,
    @Query('DoctorId') String? doctorId,
    @Query('ComplainStatusId') int? complainStatusId,
    @Query('PageNumber') int? pageNumber,
    @Query('PageSize') int? pageSize,
  });
}
