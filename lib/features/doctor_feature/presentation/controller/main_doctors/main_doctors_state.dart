import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/specialists_model/specialists_model.dart';
import '../../../domain/model/top_review_doctors_model/top_review_doctors_model.dart';

part 'main_doctors_state.freezed.dart';

@freezed
class MainDoctorsState with _$MainDoctorsState {
  const factory MainDoctorsState({
    required MainDoctorsStatus status,
    @Default([]) List<SpecialistsModel> specialists,
    @Default([]) List<TopDoctorsReview> doctors,
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