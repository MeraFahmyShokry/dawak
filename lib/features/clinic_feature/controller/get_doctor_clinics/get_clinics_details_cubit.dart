import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/doctor_details_model.dart';
import 'package:clean_arc/features/clinic_feature/domain/repository/clinic_repository.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_details_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetClinicDetailsCubit extends Cubit<BasicState<ClinicDetailsModel>> {
  GetClinicDetailsCubit(this.repository)
      : super(BasicState<ClinicDetailsModel>.initial());

  final ClinicsRepository repository;

  Future<void> getClinicDetailsById({required String id}) async {
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getClinicDetailsById(id: id);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoading: false,
          isError: failure,
          success: null,
        ));
      },
      (data) {
        emit(state.copyWith(
          isLoading: false,
          isError: null,
          success: data,
        ));
      },
    );
  }
}
