import 'package:clean_arc/core/data/repositories/base_repository_impl.dart';
import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/relevant_patient/domain/services/remote/patien_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../model/patient_relevant_patient_model/patient_relevant_patient_model.dart';
import '../params/get_relevent_params.dart';

abstract class PatientRepository {
  Future<Either<Failure, PaginatedList<PatientRelevantPatientModel>>>
      getRelevantPatient({
    required GetRelevantPatientParams params,
  });
}

@LazySingleton(as: PatientRepository)
class PatientRepositoryImpl extends BaseRepositoryImpl
    implements PatientRepository {
  final PatientServices _services;

  PatientRepositoryImpl(super.logger, this._services);

  @override
  Future<Either<Failure, PaginatedList<PatientRelevantPatientModel>>>
      getRelevantPatient({
    required GetRelevantPatientParams params,
  }) {
    return request(() async {
      final result = await _services.getRelevantPatient(
        patientId: params.patientId,
        pageNumber: params.pageNumber,
        pageSize: params.pageSize,
      );
      return Right(result);
    });
  }
}
