import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

mixin ScreenUtils<T extends StatefulWidget> on State<T> {
  ScaffoldFeatureController<void, SnackBarClosedReason>? handleError(
      {Failure? failure, String? customMessage, bool isFloating = false}) {
    showError(
        failure: failure, customMessage: customMessage, isFloating: isFloating);
    return null;
  }

  void showError(
      {Failure? failure, String? customMessage, bool isFloating = true}) {
    String message = customMessage ?? context.translate.errorMessage;
    print("failurefailure ${failure.runtimeType}");

    if (failure != null) {
      if (failure is ServerFailure) {
        print("messagemessagemessage00000${failure.message}");
        message = failure.message;
      } else if (failure is NetworkFailure) {
        message = (failure.connectionTimeOut)
            ? context.translate.connectionTimeOut
            : context.translate.noInternetConnection;
        // } else if (failure.message.isNotEmpty) {
        //   message = failure?.message;
        // }
      }else{
       }
      //   else if (failure is NetworkFailure) {
      //   message = (failure.connectionTimeOut)
      //       ? context.translate.connectionTimeOut
      //       : context.translate.noInternetConnection;
      // }
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message: message,
        ),
      );
// return null;

// return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//   content: Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//       Icon(Icons.error_outline, color: context.color.containerShadow1),
//       const SizedBox(
//         width: 8,
//       ),
//       Flexible(
//         child: Text(
//           message,
//           style: Theme.of(context)
//               .textTheme
//               .bodySmall!
//               .copyWith(color: context.color.containerShadow1),
//           textAlign: TextAlign.left,
//         ),
//       ),
//     ],
//   ),
//   backgroundColor: context.color.colorBlack,
//   behavior: isFloating ? SnackBarBehavior.floating : null,
//   margin: EdgeInsets.only(
//       bottom: MediaQuery.of(context).size.height - 150,
//       left: 10,
//       right: 10),
// ));
    }
    if(customMessage!=null){
      showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message: message,
        ),
      );
    }
  }

  void showSuccess(
      {String? customMessage,
      bool isFloating = false,
      Color? backgroundColor}) {
    String message = customMessage ?? context.translate.success;
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(
        message: message,
        icon: Container(),
      ),
    );

    // return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //   content: Text(message),
    //   backgroundColor: backgroundColor ?? context.color.primaryColor,
    //   behavior: isFloating ? SnackBarBehavior.floating : null,
    // ));
  }
}
