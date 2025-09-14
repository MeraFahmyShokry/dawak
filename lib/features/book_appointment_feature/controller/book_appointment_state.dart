// import 'package:clean_arc/core/domain/entity/failures.dart';
// import 'package:clean_arc/core/presentation/cubit/general_state.dart';
//
// class BookAppointmentState<T> {
//   final bool? isLoading;
//   final Failure? isError;
//   final T? success;
//
//   const BookAppointmentState({
//     required this.isLoading,
//     required this.isError,
//     required this.success,
//   });
//
//   factory GeneralState.initial() {
//     return GeneralState<T>(
//       isLoading: null,
//       isError: null,
//       success: null,
//     );
//   }
//
//   GeneralState<T> copyWith({
//     bool? isLoading,
//     Failure? isError,
//     T? success,
//   }) {
//     return GeneralState<T>(
//       isLoading: isLoading,
//       isError: isError,
//       success: success,
//     );
//   }
// }