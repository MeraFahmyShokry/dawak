part of 'main_doctors_cubit.dart';

@freezed
class MainDoctorsState with _$MainDoctorsState {
  const factory MainDoctorsState({
    required MainDoctorsStatus status,
    PaginatedList<SpecialistsModel>? specialists,
    PaginatedList<TopDoctorsReview>? doctors,
  }) = _MainDoctorsState;

}

@freezed
class MainDoctorsStatus with _$MainDoctorsStatus {
  const factory MainDoctorsStatus.initial() = Initial;

  const factory MainDoctorsStatus.loading() = Loading;

  const factory MainDoctorsStatus.getDoctorsLoading() = GetDoctorsFailure;

  const factory MainDoctorsStatus.getDoctorsSuccess() = GetDoctorsSuccess;

  const factory MainDoctorsStatus.getCategoriesLoading() = GetCategoriesFailure;

  const factory MainDoctorsStatus.getCategoriesSuccess() = GetCategoriesSuccess;



}