part of 'main_doctors_cubit.dart';

@freezed
class MainDoctorsState with _$MainDoctorsState {
  const factory MainDoctorsState({
    required MainDoctorsStatus status,
    @Default([]) List<SpecialistsModel> specialists,
    @Default([]) List<TopDoctorsReview> doctors,
  }) = _MainDoctorsState;

  @override
  // TODO: implement doctors
  List<TopDoctorsReview> get doctors => throw UnimplementedError();

  @override
  // TODO: implement specialists
  List<SpecialistsModel> get specialists => throw UnimplementedError();

  @override
  // TODO: implement status
  MainDoctorsStatus get status => throw UnimplementedError();
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