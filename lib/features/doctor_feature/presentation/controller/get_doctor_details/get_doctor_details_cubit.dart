import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_details_model/doctor_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDoctorDetailsCubit extends Cubit<BasicState<DoctorDetailsModel>> {
  GetDoctorDetailsCubit(this.repository)
      : super(BasicState<DoctorDetailsModel>.initial());

  final DoctorsRepository repository;

  Future<void> getDoctorDetailsById({required String id}) async {
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getDoctorDetailsById(id: id);

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
