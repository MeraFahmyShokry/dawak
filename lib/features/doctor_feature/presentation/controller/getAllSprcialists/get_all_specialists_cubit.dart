import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/data/model/base_response/base_response.dart';
import '../../../../../core/presentation/util/type_of_list.dart';
import '../../../../../core/presentation/util/utill.dart';
import '../../../../../injection/injection.dart';
import '../../../domain/model/specialists_model/specialists_model.dart';
import '../../../domain/repository/doctor_repository.dart';

part 'get_all_specialists_state.dart';

part 'get_all_specialists_cubit.freezed.dart';

class GetAllSpecialistsCubit extends Cubit<GetAllSpecialistsState> {
  GetAllSpecialistsCubit()
    : repository = getIt<DoctorsRepository>(),
      super(GetAllSpecialistsState(
          status: Initial(),
          scrollController: ScrollController(),
        ),
      );
  final DoctorsRepository repository;
  void scrollListener() {
    if (state.scrollController.position.pixels >= state.scrollController.position.maxScrollExtent) {
      getMoreSpecialists();
    }
  }

  Future<void> init() async {
    state.scrollController.addListener(scrollListener);
    await getFirstSpecialists();
  }

  Future<void> getFirstSpecialists() async {
    emit(state.copyWith(status: Loading()));
    final result = await repository.getAllSpecialist(
      pageSize: 20,
      pageNumber: 1,
      languageId: LocalizationUtil.getCurrentLanguageId,
    );
    result.fold(
          (failure) {
        emit(state.copyWith(status: GetSpecialistsFailure()));
      },
          (result) async {
        emit(
          state.copyWith(status: GetSpecialistsSuccess(), specialists: result,page: 2),
        );
      },
    );
  }

  Future<void> getMoreSpecialists() async {
    final result = await repository.getAllSpecialist(
      pageSize: 20,
      pageNumber: state.page,
      languageId: LocalizationUtil.getCurrentLanguageId,
    );
    result.fold(
          (failure) {
        emit(state.copyWith(status: GetMoreSpecialistsFailure()));
      },
          (result) async {
            List<SpecialistsModel> oldSpecialists = state.specialists?.value ?? [] ;
            result.value= oldSpecialists + (result.value??[]);
        emit(
          state.copyWith(status: GetMoreSpecialistsSuccess(), specialists: result,page: 2),
        );
      },
    );
  }

}
