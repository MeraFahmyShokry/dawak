import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'empty_widget.dart';

// class ResponseBuilderWidget<T> extends StatelessWidget {
//   final GeneralState<T> state;
//   final Widget? errorWidget;
//   final Widget Function(GeneralState<T> state)? builder;
//   final void Function()? onRetry;
//
//   const ResponseBuilderWidget({
//     super.key,
//     required this.state,
//     required this.onRetry,
//     this.builder,
//     this.errorWidget,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     if (state.isError != null) {
//       return errorWidget ??
//           CustomErrorWidget(
//             failure: state.isError!,
//             onPressed: () {
//               if (onRetry != null) {
//                 onRetry!();
//               }
//             },
//           );
//     }
//
//     // Skeletonizer works like a wrapper
//     return;
//   }
// }

class ResponseBuilderWidget<T> extends StatelessWidget {
  final bool? isLoading;
  final Failure? failure;
  final Widget? errorWidget;
  final Widget Function()? childBuilder;
  final Widget? loadingBuilder;
  final void Function()? onRetry;

  const ResponseBuilderWidget({
    super.key,
    required this.isLoading,
    required this.failure,
    required this.onRetry,
    this.childBuilder,
    this.loadingBuilder,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (failure != null) {
      return CustomErrorWidget(
        failure: failure,
        onPressed: () {
          if (onRetry != null) {
            onRetry!();
          }
        },
      );
    }

    return Skeletonizer(
      ignorePointers: false,
      enabled: isLoading ?? false,
      child: isLoading == true ? (loadingBuilder??childBuilder!()) : childBuilder!(),
    );
  }
}
