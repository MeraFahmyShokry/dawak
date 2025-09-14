import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/util/utill.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/specialists_model/specialists_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SpecialistsCubit extends Cubit<PaginatedState<SpecialistsModel>> {
  SpecialistsCubit(this.repository)
      : super(PaginatedState<SpecialistsModel>.initial());

  final DoctorsRepository repository;

  Future<void> specialists() async {
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));
    final result = await repository.getAllSpecialist(
        pageSize: 100, languageId: LocalizationUtil.getCurrentLanguageId);
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, isError: failure, success: null));
      },
      (result) async {
        emit(state.copyWith(isLoading: false, isError: null, success: result));
      },
    );
  }
}
