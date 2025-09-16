import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/top_review_doctors_model/top_doctors_review.dart';
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class DoctorReviewsCubit extends Cubit<PaginatedState<TopDoctorsReview>> {
  DoctorReviewsCubit(this.repository)
      : super(
          PaginatedState<TopDoctorsReview>.initial(),
        );

  final DoctorsRepository repository;

  Future<void> getAllDoctorReviews() async {
    emit(state.copyWith(
      isLoading: true,
      isError: null,
      success: null,
    ));

    final result = await repository.getAllDoctorReviews(
      pageNumber: 1,
      pageSize: 100,
    );

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
