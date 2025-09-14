import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/avilable_time_model/avilable_clinic_time.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/clinic_model/doctor_model.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/doctor_details_model.dart';
import 'package:clean_arc/features/clinic_feature/domain/params/get_clinic_params.dart';
import 'package:clean_arc/features/clinic_feature/domain/services/remote/clinic_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ClinicsRepository {
  Future<Either<Failure, PaginatedList<ClinicModel>>> getClinics({
    required GetClinicsParams params,
  });

  Future<Either<Failure, BaseResponseModel<ClinicDetailsModel>>>
      getClinicDetailsById({
    required String id,
  });

  Future<Either<Failure, List<AvailableTimeForAppointments>>>
      getAvailableTimeForAppointments({
    required String id,
  });
}

@LazySingleton(as: ClinicsRepository)
class ClinicsRepositoryImpl extends BaseRepositoryImpl
    implements ClinicsRepository {
  final ClinicsServices _services;

  ClinicsRepositoryImpl(super.logger, this._services);

  @override
  Future<Either<Failure, BaseResponseModel<ClinicDetailsModel>>>
      getClinicDetailsById({
    required String id,
  }) {
    return request(() async {
      final result = await _services.getClinicDetailsById(id: id);
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, PaginatedList<ClinicModel>>> getClinics({
    required GetClinicsParams params,
  }) {
    print("params.doctorId ${params.doctorId}");
    return request(() async {
      final result = await _services.getClinics(
        doctorId: params.doctorId,
        assistantId: params.assistantId,
        pageNumber: params.pageNumber,
        pageSize: params.pageSize,
      );
      return Right(result);
    });
  }

  @override
  Future<Either<Failure, List<AvailableTimeForAppointments>>>
      getAvailableTimeForAppointments({required String id}) {
    return request(() async {
      final result = await _services.getAvailableTimeForAppointments(
        clinicId: id,
      );
      return Right(result);
    });
  }
}
