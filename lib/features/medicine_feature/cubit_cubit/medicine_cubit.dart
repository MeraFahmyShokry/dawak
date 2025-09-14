// import 'package:flutter_bloc/flutter_bloc.dart';

// class MedicineState {
//   final int dosage;
//   final int duration;
//   final int times;

//   MedicineState({
//     this.dosage = 1,
//     this.duration = 1,
//     this.times = 1,
//   });

//   MedicineState copyWith({int? dosage, int? duration, int? times}) {
//     return MedicineState(
//       dosage: dosage ?? this.dosage,
//       duration: duration ?? this.duration,
//       times: times ?? this.times,
//     );
//   }
// }

// class MedicineCubit extends Cubit<MedicineState> {
//   MedicineCubit() : super(MedicineState());

//   void incrementDosage() => emit(state.copyWith(dosage: state.dosage + 1));
//   void decrementDosage() {
//     if (state.dosage > 1) emit(state.copyWith(dosage: state.dosage - 1));
//   }

//   void incrementDuration() =>
//       emit(state.copyWith(duration: state.duration + 1));
//   void decrementDuration() {
//     if (state.duration > 1) emit(state.copyWith(duration: state.duration - 1));
//   }

//   void incrementTimes() => emit(state.copyWith(times: state.times + 1));
//   void decrementTimes() {
//     if (state.times > 1) emit(state.copyWith(times: state.times - 1));
//   }
// }

import 'package:flutter_bloc/flutter_bloc.dart';

class MedicineState {
  final int dosage;
  final int duration;
  final int times;

  MedicineState({
    this.dosage = 1,
    this.duration = 1,
    this.times = 1,
  });

  MedicineState copyWith({int? dosage, int? duration, int? times}) {
    return MedicineState(
      dosage: dosage ?? this.dosage,
      duration: duration ?? this.duration,
      times: times ?? this.times,
    );
  }
}

class MedicineCubit extends Cubit<MedicineState> {
  MedicineCubit() : super(MedicineState());

  void incrementDosage() => emit(state.copyWith(dosage: state.dosage + 1));
  void decrementDosage() {
    if (state.dosage > 1) emit(state.copyWith(dosage: state.dosage - 1));
  }

  void incrementDuration() =>
      emit(state.copyWith(duration: state.duration + 1));
  void decrementDuration() {
    if (state.duration > 1) emit(state.copyWith(duration: state.duration - 1));
  }

  void incrementTimes() => emit(state.copyWith(times: state.times + 1));
  void decrementTimes() {
    if (state.times > 1) emit(state.copyWith(times: state.times - 1));
  }
}
