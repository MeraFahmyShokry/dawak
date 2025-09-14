import 'package:clean_arc/core/domain/entity/failures.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/custom_button_button.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomErrorWidget extends StatelessWidget {
  void Function() onPressed;
  Failure? failure;

  CustomErrorWidget({required this.failure, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    String? message;
    if (failure != null) {
      if (failure is ServerFailure) {
        print(
            "messagemessagemessage00000${(failure as ServerFailure).message}");
        message = (failure as ServerFailure).message;
      } else if (failure is NetworkFailure) {
        message = ((failure as NetworkFailure).connectionTimeOut)
            ? LocaleKeys.connectionTimeOut.tr()
            : LocaleKeys.noInternetConnection.tr();
      }
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextApp(
               message ?? '',
              style: context.textStyle.copyWith(
                  fontSize: 18, color: Colors.red, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 200.w,
            child: CustomButton(
                onPressed: onPressed,
                child: TextApp(
                   LocaleKeys.tryAgain.tr(),
                  style: context.textStyleButton,
                )),
          )
        ],
      ),
    );
  }
}
