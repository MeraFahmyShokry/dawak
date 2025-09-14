// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clean_arc/core/app/app_cubit/app_cubit.dart' as _i421;
import 'package:clean_arc/core/data/services/api_services/injectable_module.dart'
    as _i890;
import 'package:clean_arc/core/data/services/shared_prefs/i_local_preference.dart'
    as _i801;
import 'package:clean_arc/core/data/services/shared_prefs/local_storage.dart'
    as _i290;
import 'package:clean_arc/core/data/utill/configration.dart' as _i790;
import 'package:clean_arc/core/utils/helper/error_handler.dart' as _i246;
import 'package:clean_arc/core/utils_package/utils_package.dart' as _i845;
import 'package:clean_arc/features/auth_feature/domain/repository/auth_repository.dart'
    as _i453;
import 'package:clean_arc/features/auth_feature/domain/services/remote/login_remote_data_source.dart'
    as _i275;
import 'package:clean_arc/features/auth_feature/presentaion/controller/auth_cubit.dart'
    as _i1020;
import 'package:clean_arc/features/book_appointment_feature/controller/book_appointment_controller.dart'
    as _i311;
import 'package:clean_arc/features/book_appointment_feature/domain/repository/book_appointment_repository.dart'
    as _i847;
import 'package:clean_arc/features/book_appointment_feature/domain/services/remote/book_appointment_remote_data_source.dart'
    as _i453;
import 'package:clean_arc/features/clinic_feature/controller/get_all_clinics/get_all_clinics.dart'
    as _i443;
import 'package:clean_arc/features/clinic_feature/controller/get_avilavle_time_for_appointments/get_available_time_for_appointments.dart'
    as _i278;
import 'package:clean_arc/features/clinic_feature/controller/get_doctor_clinics/get_clinics_details_cubit.dart'
    as _i1043;
import 'package:clean_arc/features/clinic_feature/domain/repository/clinic_repository.dart'
    as _i654;
import 'package:clean_arc/features/clinic_feature/domain/services/remote/clinic_remote_data_source.dart'
    as _i27;
import 'package:clean_arc/features/doctor_feature/domain/repository/doctor_repository.dart'
    as _i820;
import 'package:clean_arc/features/doctor_feature/domain/services/remote/doctors_remote_data_source.dart'
    as _i397;
import 'package:clean_arc/features/doctor_feature/presentation/controller/get_all_doctor/get_all_doctor.dart'
    as _i147;
import 'package:clean_arc/features/doctor_feature/presentation/controller/get_all_doctor_complaints/get_all_doctor_complaints.dart'
    as _i49;
import 'package:clean_arc/features/doctor_feature/presentation/controller/get_doctor_details/get_doctor_details_cubit.dart'
    as _i109;
import 'package:clean_arc/features/doctor_feature/presentation/controller/specialists/specialists_cubit.dart'
    as _i1034;
import 'package:clean_arc/features/doctor_feature/presentation/controller/top_doctors/top_doctors_cubit.dart'
    as _i404;
import 'package:clean_arc/features/layout_feature/cubit_cubit/layout_cubit.dart'
    as _i732;
import 'package:clean_arc/features/relevant_patient/controller/get_relevant_patient_controller.dart'
    as _i430;
import 'package:clean_arc/features/relevant_patient/domain/repository/patient_repository.dart'
    as _i901;
import 'package:clean_arc/features/relevant_patient/domain/services/remote/patien_remote_data_source.dart'
    as _i589;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

const String _staging = 'staging';
const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final injectableModule = _$InjectableModule();
    gh.factory<_i421.AppCubit>(() => _i421.AppCubit());
    gh.factory<_i732.LayoutCubit>(() => _i732.LayoutCubit());
    gh.singleton<_i246.ErrorHandler>(() => _i246.ErrorHandler());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => injectableModule.sharedPref,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => injectableModule.dioInstance);
    gh.lazySingleton<_i974.Logger>(() => injectableModule.logger);
    gh.singleton<_i801.ILocalPreference>(() => _i290.LocalPreferenceImpl());
    gh.lazySingleton<_i790.Configuration>(
      () => _i790.StagingConfiguration(),
      registerFor: {_staging},
    );
    gh.lazySingleton<_i790.Configuration>(
      () => _i790.DevConfiguration(),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i275.AuthServices>(
      () => _i275.AuthServices(gh<_i845.Dio>(), gh<_i790.Configuration>()),
    );
    gh.lazySingleton<_i453.BookAppointmentServices>(
      () => _i453.BookAppointmentServices(
        gh<_i845.Dio>(),
        gh<_i790.Configuration>(),
      ),
    );
    gh.lazySingleton<_i27.ClinicsServices>(
      () => _i27.ClinicsServices(gh<_i845.Dio>(), gh<_i790.Configuration>()),
    );
    gh.lazySingleton<_i397.DoctorsServices>(
      () => _i397.DoctorsServices(gh<_i845.Dio>(), gh<_i790.Configuration>()),
    );
    gh.lazySingleton<_i589.PatientServices>(
      () => _i589.PatientServices(gh<_i845.Dio>(), gh<_i790.Configuration>()),
    );
    gh.lazySingleton<_i790.Configuration>(
      () => _i790.ProdConfiguration(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i654.ClinicsRepository>(
      () => _i654.ClinicsRepositoryImpl(
        gh<_i974.Logger>(),
        gh<_i27.ClinicsServices>(),
      ),
    );
    gh.factory<_i443.GetClinicsCubit>(
      () => _i443.GetClinicsCubit(gh<_i654.ClinicsRepository>()),
    );
    gh.factory<_i278.GetCAvailableTimeForAppointments>(
      () =>
          _i278.GetCAvailableTimeForAppointments(gh<_i654.ClinicsRepository>()),
    );
    gh.factory<_i1043.GetClinicDetailsCubit>(
      () => _i1043.GetClinicDetailsCubit(gh<_i654.ClinicsRepository>()),
    );
    gh.lazySingleton<_i847.AuthRepository>(
      () => _i847.AuthRepositoryImpl(
        gh<_i974.Logger>(),
        gh<_i275.AuthServices>(),
      ),
    );
    gh.lazySingleton<_i453.AuthRepository>(
      () => _i453.AuthRepositoryImpl(
        gh<_i974.Logger>(),
        gh<_i275.AuthServices>(),
      ),
    );
    gh.lazySingleton<_i901.PatientRepository>(
      () => _i901.PatientRepositoryImpl(
        gh<_i974.Logger>(),
        gh<_i589.PatientServices>(),
      ),
    );
    gh.lazySingleton<_i820.DoctorsRepository>(
      () => _i820.DoctorsRepositoryImpl(
        gh<_i974.Logger>(),
        gh<_i397.DoctorsServices>(),
      ),
    );
    gh.factory<_i311.BookAppointmentCubit>(
      () => _i311.BookAppointmentCubit(gh<_i901.PatientRepository>()),
    );
    gh.factory<_i430.GetPatientCubit>(
      () => _i430.GetPatientCubit(gh<_i901.PatientRepository>()),
    );
    gh.factory<_i1020.LoginCubit>(
      () => _i1020.LoginCubit(gh<_i453.AuthRepository>()),
    );
    gh.factory<_i147.GetDoctorsCubit>(
      () => _i147.GetDoctorsCubit(gh<_i820.DoctorsRepository>()),
    );
    gh.factory<_i49.GetAllDoctorComplaints>(
      () => _i49.GetAllDoctorComplaints(gh<_i820.DoctorsRepository>()),
    );
    gh.factory<_i109.GetDoctorDetailsCubit>(
      () => _i109.GetDoctorDetailsCubit(gh<_i820.DoctorsRepository>()),
    );
    gh.factory<_i1034.SpecialistsCubit>(
      () => _i1034.SpecialistsCubit(gh<_i820.DoctorsRepository>()),
    );
    gh.factory<_i404.DoctorReviewsCubit>(
      () => _i404.DoctorReviewsCubit(gh<_i820.DoctorsRepository>()),
    );
    return this;
  }
}

class _$InjectableModule extends _i890.InjectableModule {}
