import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_complaints_model/doctor_complaints_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/params/get_doctor_complains_params.dart';
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllDoctorComplaints
    extends Cubit<PaginatedState<DoctorComplaintsModel>> {
  GetAllDoctorComplaints(this.repository)
      : super(PaginatedState<DoctorComplaintsModel>.initial());
  final DoctorsRepository repository;

  Future<List<DoctorComplaintsModel>> getAllDoctorComplaints(
      {required GetAllDoctorComplaintsParams params}) async {
    print('getClinics');
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getAllDoctorComplaints(params: params);

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
