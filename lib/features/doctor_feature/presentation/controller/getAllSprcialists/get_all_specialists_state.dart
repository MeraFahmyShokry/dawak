part of 'get_all_specialists_cubit.dart';

@freezed
class GetAllSpecialistsState with _$GetAllSpecialistsState {
  const factory GetAllSpecialistsState(
      {
        required GetAllSpecialistsStatus status,
        PaginatedList<SpecialistsModel>? specialists,
        required ScrollController scrollController,
        @Default(1) int page
      }
      ) = _GetAllSpecialistsState;
}

@freezed
class  GetAllSpecialistsStatus with _$GetAllSpecialistsStatus {
  const factory GetAllSpecialistsStatus.initial() = Initial;

  const factory GetAllSpecialistsStatus.loading() = Loading;

  const factory GetAllSpecialistsStatus.getMoreCategoriesLoading() = GetMoreSpecialistsFailure;

  const factory GetAllSpecialistsStatus.getMoreCategoriesSuccess() = GetMoreSpecialistsSuccess;

  const factory GetAllSpecialistsStatus.getCategoriesLoading() = GetSpecialistsFailure;

  const factory GetAllSpecialistsStatus.getCategoriesSuccess() = GetSpecialistsSuccess;



}