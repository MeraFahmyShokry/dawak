part of 'doctors_by_specialist_cubit.dart';

@freezed
class DoctorsBySpecialistState with _$DoctorsBySpecialistState {
  const factory DoctorsBySpecialistState({
    required DoctorsBySpecialistStatus currentState,
    required ScrollController scrollController,
    @Default(1) int page,
    PaginatedList<DoctorModel>? doctors,
}) = _DoctorsBySpecialistState;
}

@freezed
class  DoctorsBySpecialistStatus with _$DoctorsBySpecialistStatus {
  const factory DoctorsBySpecialistStatus.initial() = Initial;

  const factory DoctorsBySpecialistStatus.loading() = Loading;

  const factory DoctorsBySpecialistStatus.getMoreCategoriesLoading() = GetMoreDoctorsFailure;

  const factory DoctorsBySpecialistStatus.getMoreCategoriesSuccess() = GetMoreDoctorsSuccess;

  const factory DoctorsBySpecialistStatus.getCategoriesLoading() = GetDoctorsFailure;

  const factory DoctorsBySpecialistStatus.getCategoriesSuccess() = GetDoctorsSuccess;



}