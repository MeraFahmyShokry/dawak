import 'dart:developer';

import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_complaints_model/doctor_complaints_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_details_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/specialists_model/specialists_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/top_review_doctors_model/top_doctors_review.dart';
import 'package:clean_arc/features/doctor_feature/domain/params/get_doctor_complains_params.dart';
import 'package:clean_arc/features/doctor_feature/domain/params/get_doctors_params.dart';
import 'package:clean_arc/features/doctor_feature/domain/services/remote/doctors_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class DoctorsRepository {
  Future<Either<Failure, PaginatedList<SpecialistsModel>>> getAllSpecialist({
    int languageId,
    int pageNumber,
    int pageSize,
    String orderBy,
    String sortDir,
  });

  Future<Either<Failure, PaginatedList<TopDoctorsReview>>> getAllDoctorReviews({
    int? pageNumber,
    int? pageSize,
    String? orderBy,
    String? sortDir,
  });

  Future<Either<Failure, BaseResponseModel<DoctorDetailsModel>>>
      getDoctorDetailsById({
    required String id,
  });

  Future<Either<Failure, PaginatedList<DoctorModel>>> getDoctors({
    required GetDoctorsParams params,
  });

  Future<Either<Failure, PaginatedList<DoctorComplaintsModel>>>
      getAllDoctorComplaints({
    required GetAllDoctorComplaintsParams params,
  });
}

@LazySingleton(as: DoctorsRepository)
class DoctorsRepositoryImpl extends BaseRepositoryImpl
    implements DoctorsRepository {
  final DoctorsServices _services;

  DoctorsRepositoryImpl(super.logger, this._services);

  @override
  Future<Either<Failure, PaginatedList<SpecialistsModel>>> getAllSpecialist({
    int? languageId,
    int? pageNumber,
    int? pageSize,
    String? orderBy,
    String? sortDir,
  }) {
    return request(() async {
      final result = await _services.getAllSpecialist(
        languageId: languageId,
        pageNumber: pageNumber,
        pageSize: pageSize,
        orderBy: orderBy,
        sortDir: sortDir,
      );
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, PaginatedList<TopDoctorsReview>>> getAllDoctorReviews({
    int? pageNumber,
    int? pageSize,
    String? orderBy,
    String? sortDir,
  }) {
    return request(() async {
      final result = await _services.getAllDoctorReviews(
        pageNumber: pageNumber,
        pageSize: pageSize,
        orderBy: orderBy,
        sortDir: sortDir,
      );
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, BaseResponseModel<DoctorDetailsModel>>>
      getDoctorDetailsById({
    required String id,
  }) {
    return request(() async {
      final result = await _services.getDoctorDetailsById(id: id);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, PaginatedList<DoctorModel>>> getDoctors({
    required GetDoctorsParams params,
  }) {
    return request(() async {
      final result = await _services.getDoctors(
        specialistId: params.specialty,
        pageNumber: params.pageNumber,
        pageSize: params.pageSize,
      );
      log("mera:: ${result}");
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, PaginatedList<DoctorComplaintsModel>>>
      getAllDoctorComplaints({
    required GetAllDoctorComplaintsParams params,
  }) {

    return request(() async {
      final result = await _services.getAllDoctorComplaints(
        specialistId: params.specialistId,
        doctorId: params.doctorId,
        complainStatusId: params.complainStatusId,
        pageNumber: params.pageNumber,
        pageSize: params.pageSize,
      );
      return Right(result);
    });
  }
}
