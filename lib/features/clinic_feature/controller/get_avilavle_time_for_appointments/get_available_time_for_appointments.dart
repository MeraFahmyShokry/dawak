import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/avilable_time_model/avilable_clinic_time.dart';
import 'package:clean_arc/features/clinic_feature/domain/repository/clinic_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCAvailableTimeForAppointments extends Cubit<ListState<AvailableTimeForAppointments>> {
  GetCAvailableTimeForAppointments(this.repository)
      : super(ListState<AvailableTimeForAppointments>.initial());

  final ClinicsRepository repository;

  Future<List<AvailableTimeForAppointments>> getAvailableTimeForAppointments(
      {required String id}) async {
    print('getClinics');
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getAvailableTimeForAppointments(id: id);

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

        return data ?? [];
      },
    );
  }
}
