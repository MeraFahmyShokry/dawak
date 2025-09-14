import 'package:bloc/bloc.dart';
import 'package:clean_arc/core/presentation/util/utill.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/specialists_model/specialists_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/top_review_doctors_model/top_review_doctors_model.dart';
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart';
import 'package:clean_arc/injection/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_doctors_state.dart';
part 'main_doctors_cubit.freezed.dart';

class MainDoctorsCubit extends Cubit<MainDoctorsState> {
  MainDoctorsCubit() :
        repository=getIt<DoctorsRepository>(),

      super(const MainDoctorsState(
          status: Initial()
      ));


  final DoctorsRepository repository;

  Future<void> init () async {
    emit(state.copyWith(status: Loading()));
    await Future.wait([
      specialists(),
      getAllDoctorReviews()
    ]);
    return;
  }
  Future<void> specialists() async {
    final result = await repository.getAllSpecialist(
        pageSize: 100, languageId: LocalizationUtil.getCurrentLanguageId);
    result.fold(
          (failure) {
        emit(state.copyWith(status: GetCategoriesFailure()));
      },
          (result) async {
        emit(state.copyWith(status: GetCategoriesSuccess(),specialists: result.data??[]));
      },
    );
  }


  Future<void> getAllDoctorReviews() async {
    final result = await repository.getAllDoctorReviews(
      pageNumber: 1,
      pageSize: 100,
    );

    result.fold(
          (failure) {
        emit(state.copyWith(status: GetDoctorsFailure()));
      },
          (data) {
        emit(state.copyWith(status: GetDoctorsSuccess(),doctors: data.data??[]));
      },
    );
  }
}
