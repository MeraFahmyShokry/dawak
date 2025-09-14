import 'package:clean_arc/core/data/services/shared_prefs/i_local_preference.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/avilable_time_model/avilable_clinic_time.dart';
import 'package:clean_arc/features/clinic_feature/domain/model/clinic_model/doctor_model.dart';
import 'package:clean_arc/features/relevant_patient/domain/model/patient_relevant_patient_model/patient_relevant_patient_model.dart';
import 'package:clean_arc/features/relevant_patient/domain/repository/patient_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../injection/injection.dart';

@injectable
class BookAppointmentCubit
    extends Cubit<PaginatedState<PatientRelevantPatientModel>> {
  BookAppointmentCubit(this.repository)
      : super(PaginatedState<PatientRelevantPatientModel>.initial());

  final PatientRepository repository;

  static BookAppointmentCubit get(BuildContext context) =>
      context.read<BookAppointmentCubit>();

  static BookAppointmentCubit getwatch(BuildContext context) =>
      context.watch<BookAppointmentCubit>();

  String? patientId = getIt<ILocalPreference>().appUser.value?.id;
  String doctorId = '';
  ClinicModel? selectedClinic;
  AvailableTimeForAppointments? selectedDate;
  String? selectedTime;

  void setDoctorId(String id) {
    doctorId = id;
    emit(state);
  }

  void clearSelectedDate() {
    emit(state.copyWith());
    selectedDate = null;
    emit(state.copyWith());
  }

  void clearSelectedTime() {
    emit(state.copyWith());

    selectedTime = null;
    emit(state.copyWith());
  }
}
