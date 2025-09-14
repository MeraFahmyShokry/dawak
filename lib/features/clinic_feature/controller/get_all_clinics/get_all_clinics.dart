import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/clinic_model/doctor_model.dart';
import 'package:clean_arc/features/clinic_feature/domain/params/get_clinic_params.dart';
import 'package:clean_arc/features/clinic_feature/domain/repository/clinic_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetClinicsCubit extends Cubit<PaginatedState<ClinicModel>> {
  GetClinicsCubit(this.repository)
      : super(PaginatedState<ClinicModel>.initial());

  final ClinicsRepository repository;

  Future<List<ClinicModel>> getClinics(
      {required GetClinicsParams params}) async {
    print('getClinics');
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getClinics(params: params);

    return result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isError: failure,
          success: null,
        ));
        return [];
      },
      (data) {
        emit(state.copyWith(
          isLoading: false,
          isError: null,
          success: data,
        ));

        return data.data ?? [];
      },
    );
  }
}
