import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/relevant_patient/domain/model/patient_relevant_patient_model/patient_relevant_patient_model.dart';
import 'package:clean_arc/features/relevant_patient/domain/repository/patient_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../core/data/services/shared_prefs/i_local_preference.dart';
import '../../../injection/injection.dart';
import '../domain/params/get_relevent_params.dart';

@injectable
class GetPatientCubit
    extends Cubit<PaginatedState<PatientRelevantPatientModel>> {
  GetPatientCubit(this.repository)
      : super(PaginatedState<PatientRelevantPatientModel>.initial());

  final PatientRepository repository;

  Future<void> getRelevantPatient(BuildContext context,
      {required GetRelevantPatientParams params}) async {
    print('getDoctors');
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getRelevantPatient(params: params);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isError: failure,
          success: null,
        ));
      },
      (data) {
        data.value?.insert(
          0,
          PatientRelevantPatientModel(
              id:getIt<ILocalPreference>().appUser.value?.id,
              patientId: getIt<ILocalPreference>().appUser.value?.id,
              description: '',
              name: context.translate.me,
              dob: DateTime.now(),
              code: '',
              isActive: true),
        );
        emit(state.copyWith(
          isLoading: false,
          isError: null,
          success: data,
        ));
      },
    );
  }
}
