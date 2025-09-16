import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/data/model/base_response/base_response.dart';
import '../../../../../core/presentation/util/type_of_list.dart';
import '../../../../../injection/injection.dart';
import '../../../domain/model/doctor_model/doctor_model.dart';
import '../../../domain/params/get_doctors_params.dart';
import '../../../domain/repository/doctor_repository.dart';

part 'doctors_by_specialist_state.dart';
part 'doctors_by_specialist_cubit.freezed.dart';

class DoctorsBySpecialistCubit extends Cubit<DoctorsBySpecialistState> {
  DoctorsBySpecialistCubit() :
        repository = getIt<DoctorsRepository>(),
        super( DoctorsBySpecialistState(
        currentState: Initial(),
        scrollController: ScrollController(),
      ));

  final DoctorsRepository repository;
  void scrollListener({int? specialtyId}) {
    if (state.scrollController.position.pixels >= state.scrollController.position.maxScrollExtent) {
      getMoreDoctors(specialtyId: specialtyId);
    }
  }

  Future<void> init({int? specialtyId}) async {
    state.scrollController.addListener(()=>scrollListener(specialtyId: specialtyId));
    await getFirstDoctors(specialtyId: specialtyId);
  }

  Future<void> getFirstDoctors({int? specialtyId}) async {
    emit(state.copyWith(currentState: Loading()));
    final result = await repository.getDoctors(params: GetDoctorsParams(
      pageNumber: 1,
      pageSize: 10,
      specialty:specialtyId
    ));
    result.fold(
          (failure) {
        emit(state.copyWith(currentState: GetDoctorsFailure()));
      },
          (result) async {
        emit(
          state.copyWith(currentState: GetDoctorsSuccess(), doctors: result,page: 2),
        );
      },
    );
  }

  Future<void> getMoreDoctors({int? specialtyId}) async {
    final result = await repository.getDoctors(params: GetDoctorsParams(
        pageNumber: state.page,
        pageSize: 10,
        specialty:specialtyId
    ));

    result.fold(
          (failure) {
        emit(state.copyWith(currentState: GetMoreDoctorsFailure()));
      },
          (result) async {
        List<DoctorModel> oldSpecialists = state.doctors?.data ?? [] ;
        result.value= oldSpecialists + (result.value??[]);
        emit(
          state.copyWith(currentState: GetMoreDoctorsSuccess(), doctors: result,page: 2),
        );
      },
    );
  }
}
