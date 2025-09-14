import 'package:clean_arc/core/data/model/base_response/base_response.dart';
import 'package:clean_arc/core/presentation/cubit/general_state.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/params/get_doctors_params.dart';
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDoctorsCubit
    extends Cubit<PaginatedState<DoctorModel>> {
  GetDoctorsCubit(this.repository)
      : super(PaginatedState<DoctorModel>.initial());

  final DoctorsRepository repository;

  Future<void> getDoctors({required GetDoctorsParams params}) async {
    print('getDoctors');
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getDoctors(params: params);

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
