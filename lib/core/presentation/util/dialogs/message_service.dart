import 'package:clean_arc/core/presentation/widget/custom_button_button.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_them.dart';

enum ToastStates { success, error, warning }

@singleton
class MessageService {
  // static void showCustomDialog(BuildContext context,
  //     {String? image, String? title, Function()? onConfirmPressed, Function()? onCancelPressed}) {
  //   showGeneralDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     barrierColor: AppColors.lightGrey,
  //     transitionDuration: const Duration(milliseconds: 300),
  //     pageBuilder: (_, __, ___) {
  //       return Material(
  //         color: Colors.transparent,
  //         child: Center(
  //           child: Container(
  //             constraints: BoxConstraints(
  //               maxHeight: SizeManager.heightFromScreen(1.5, context),
  //               minHeight: SizeManager.heightFromScreen(1.8, context),
  //               maxWidth: SizeManager.widthFromScreen(1.2, context),
  //               minWidth: SizeManager.widthFromScreen(1.5, context),
  //             ),
  //             margin: const EdgeInsets.symmetric(horizontal: 20),
  //             decoration:
  //                 BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
  //             child: Column(
  //               children: [
  //                 title != null ? Text(title) : const SizedBox.shrink(),
  //                 SizedBox(
  //                   height: SizeManager.heightFromScreen(3, context),
  //                   width: SizeManager.widthFromScreen(2, context),
  //                   child: image != null
  //                       ? Image.file(File(image), fit: BoxFit.contain)
  //                       : Assets.images.logo.image(),
  //                 ),
  //                 Center(
  //                   child: Padding(
  //                     padding: SizeManager.sW10.padHorizontal,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         SizedBox(
  //                           width: SizeManager.widthFromScreen(3.5, context),
  //                           child: AppButton(
  //                               onTap: onConfirmPressed,
  //                               icon: Icon(
  //                                 Icons.check,
  //                                 color: Colors.white,
  //                                 size: 40.sp,
  //                               )),
  //                         ),
  //                         SizedBox(
  //                           width: SizeManager.widthFromScreen(3.5, context),
  //                           child: AppButton(
  //                               onTap: onCancelPressed,
  //                               background: Colors.white,
  //                               border: Border.all(color: Colors.black),
  //                               icon: Icon(
  //                                 Icons.close_rounded,
  //                                 color: Colors.red,
  //                                 size: 40.sp,
  //                               )),
  //                         ),
  //                       ].paddingSymmetric(horizontal: SizeManager.sW16),
  //                     ),
  //                   ),
  //                 )
  //               ].paddingSymmetric(vertical: SizeManager.sH20),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //     transitionBuilder: (_, anim, __, child) {
  //       Tween<Offset> tween;
  //       if (anim.status == AnimationStatus.reverse) {
  //         tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
  //       } else {
  //         tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
  //       }
  //
  //       return SlideTransition(
  //         position: tween.animate(anim),
  //         child: FadeTransition(
  //           opacity: anim,
  //           child: child,
  //         ),
  //       );
  //     },
  //   );
  // }

  // static void showLoginDialog(BuildContext context,
  //     {String? image,
  //     String? title,
  //     String? body,
  //     Function()? onConfirmPressed,
  //     Function()? onCancelPressed}) {
  //   showGeneralDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     barrierColor: AppColors.lightGrey,
  //     transitionDuration: const Duration(milliseconds: 300),
  //     pageBuilder: (_, __, ___) {
  //       return Material(
  //         color: Colors.transparent,
  //         child: Center(
  //           child: Container(
  //             margin: const EdgeInsets.symmetric(horizontal: 20),
  //             decoration:
  //                 BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 20.verticalSpace,
  //                 SvgPicture.asset(
  //                   image ?? Assets.svg.successCheck.path,
  //                   fit: BoxFit.cover,
  //                   height: 150.h,
  //                   width: SizeManager.widthFromScreen(1, context),
  //                 ),
  //                 10.verticalSpace,
  //                 Text(
  //                   title ?? '',
  //                   textAlign: TextAlign.center,
  //                   style: Theme.of(context).textTheme.titleLarge?.copyWith(
  //                         fontWeight: FontWeight.w600,
  //                         color: AppColors.darkBlack,
  //                         fontSize: 18.sp,
  //                       ),
  //                 ),
  //                 5.verticalSpace,
  //                 Text(body ?? '',
  //                     textAlign: TextAlign.center,
  //                     style: Theme.of(context).textTheme.titleLarge?.copyWith(
  //                           height: 1.4,
  //                           fontWeight: FontWeight.w400,
  //                           color: AppColors.darkBlack,
  //                           fontSize: 14.sp,
  //                         )),
  //                 20.verticalSpace,
  //                 Center(
  //                   child: Padding(
  //                     padding: SizeManager.sW10.padHorizontal,
  //                     child: Row(
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         SizedBox(
  //                           width: SizeManager.widthFromScreen(3.5, context),
  //                           child: AppButton(
  //                             onTap: onConfirmPressed,
  //                             radius: 50.r,
  //                             icon: Text(
  //                               LocaleKeys.login.tr(),
  //                               style: Theme.of(context).textTheme.titleMedium?.copyWith(
  //                                     fontSize: 16.sp,
  //                                     color: AppColors.white,
  //                                     fontWeight: FontWeight.w500,
  //                                   ),
  //                             ),
  //                           ),
  //                         ),
  //                         SizedBox(
  //                           width: SizeManager.widthFromScreen(3.5, context),
  //                           child: AppButton(
  //                             onTap: onCancelPressed,
  //                             background: Colors.white,
  //                             border: Border.all(color: Colors.black),
  //                             radius: 50.r,
  //                             icon: Text(
  //                               LocaleKeys.cancel.tr(),
  //                               style: Theme.of(context).textTheme.titleMedium?.copyWith(
  //                                     fontSize: 16.sp,
  //                                     fontWeight: FontWeight.w500,
  //                                   ),
  //                             ),
  //                           ),
  //                         ),
  //                       ].paddingSymmetric(horizontal: SizeManager.sW16),
  //                     ),
  //                   ),
  //                 ),
  //                 15.verticalSpace,
  //               ],
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //     transitionBuilder: (_, anim, __, child) {
  //       Tween<Offset> tween;
  //       if (anim.status == AnimationStatus.reverse) {
  //         tween = Tween(begin: const Offset(-1, 0), end: Offset.zero);
  //       } else {
  //         tween = Tween(begin: const Offset(1, 0), end: Offset.zero);
  //       }
  //
  //       return SlideTransition(
  //         position: tween.animate(anim),
  //         child: FadeTransition(
  //           opacity: anim,
  //           child: child,
  //         ),
  //       );
  //     },
  //   );
  // }

  // static void showConfirmationDialog(
  //   BuildContext context, {
  //   Function()? onButtonPressedYes,
  //   Function()? onButtonPressedNo,
  //   required Function() onPopInvoked,
  //   String? title,
  //   String? body,
  //   String? image,
  //   String? buttonYesText,
  //   String? buttonNoText,
  //   Color? titleColor,
  //   Color? bodyColor,
  //   Color? buttonYesColor,
  //   Color? buttonYesBackgroundColor,
  //   Color? buttonNoColor,
  //   Color? buttonNoBackgroundColor,
  //   bool? isNeedNoButton = false,
  //   bool? isButtonNotNeed = false,
  //   bool isWithExitButton = true,
  // }) {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     barrierColor: AppColors.lightGrey,
  //     builder: (BuildContext context) {
  //       return PopScope(
  //         canPop: true,
  //         onPopInvokedWithResult: (didPop, result) {
  //           onPopInvoked();
  //         },
  //         child: AlertDialog(
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(20.r), // Set the BorderRadius here
  //           ),
  //           content: SizedBox(
  //             height: SizeManager.heightFromScreen(3, context),
  //             width: SizeManager.widthFromScreen(1, context),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 SvgPicture.asset(
  //                   image ?? Assets.svg.successCheck.path,
  //                   fit: BoxFit.cover,
  //                   height: SizeManager.sH70,
  //                   width: SizeManager.widthFromScreen(1, context),
  //                 ),
  //                 Text(
  //                   title ?? '',
  //                   textAlign: TextAlign.center,
  //                   style: Theme.of(context).textTheme.titleLarge?.copyWith(
  //                         fontWeight: FontWeight.w600,
  //                         color: titleColor ?? AppColors.darkBlack,
  //                         fontSize: 18.sp,
  //                       ),
  //                 ),
  //                 Text(
  //                   body ?? '',
  //                   textAlign: TextAlign.center,
  //                   style: Theme.of(context).textTheme.titleLarge?.copyWith(
  //                         height: 1.4,
  //                         fontWeight: FontWeight.w400,
  //                         color: bodyColor ?? AppColors.darkBlack,
  //                         fontSize: 14.sp,
  //                       ),
  //                 ),
  //                 if (isButtonNotNeed == true)
  //                   const SizedBox()
  //                 else
  //                   Row(
  //                     children: [
  //                       Expanded(
  //                         child: SizedBox(
  //                           //  width: SizeManager.sW150,
  //                           child: AppButton(
  //                             onTap: onButtonPressedYes,
  //                             radius: 50.r,
  //                             background: buttonYesBackgroundColor,
  //                             icon: Text(
  //                               buttonYesText ?? LocaleKeys.startNow.tr(),
  //                               style: Theme.of(context).textTheme.titleMedium?.copyWith(
  //                                   fontSize: 16.sp,
  //                                   fontWeight: FontWeight.w500,
  //                                   color: buttonYesColor),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       isNeedNoButton == true ? 5.horizontalSpace : const SizedBox(),
  //                       isNeedNoButton == true
  //                           ? Expanded(
  //                               child: SizedBox(
  //                                 //width: SizeManager.sW150,
  //                                 child: AppButton(
  //                                   onTap: onButtonPressedNo,
  //                                   radius: 50.r,
  //                                   background: buttonNoBackgroundColor,
  //                                   icon: Text(
  //                                     buttonNoText ?? LocaleKeys.startNow.tr(),
  //                                     style: Theme.of(context).textTheme.titleMedium?.copyWith(
  //                                         fontSize: 16.sp,
  //                                         fontWeight: FontWeight.w500,
  //                                         color: buttonNoColor),
  //                                   ),
  //                                 ),
  //                               ),
  //                             )
  //                           : const SizedBox(),
  //                     ],
  //                   )
  //               ].paddingSymmetric(vertical: SizeManager.sH4),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  static void showToast({
    required String msg,
    required ToastStates state,
  }) =>
      Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(state),
        textColor: Colors.white,
        fontSize: 16.spMin,
      );

  ///
  void showCustomModalBottomSheet(
    BuildContext context, {
    required Function() onTap,
  }) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return const Flexible(
          child: Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Center(
                  child: Text("hhythy"),
                ),
                Center(
                  child: Text("hhythy"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Color chooseToastColor(ToastStates state) {
    Color color;
    switch (state) {
      case ToastStates.success:
        color = Colors.green;
        break;
      case ToastStates.error:
        color = Colors.red;
        break;
      case ToastStates.warning:
        color = Colors.amber;
        break;
    }
    return color;
  }

  static showAppDialog({
    required BuildContext context,
    required String title,
    required String body,
    Function()? onTapConfirm,
    Function()? onTapCancel,
    required String confirmationText,
    required String cancelationText,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: AppColors.barrierColor,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: Center(
            child: Text(
              title,
              style: AppTextTheme.headingSmall,
              maxLines: 3,
            ),
          ),
          content: Text(
             body,
            style: AppTextTheme.bodyMedium.copyWith(
              color: AppColors.secondTextColor
            ),
            textAlign: TextAlign.center,
            maxLines: 10,
          ),
          insetPadding: 10.padAll,
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            CustomButton(
              width: 140.w,
              title: cancelationText,
              onPressed: onTapCancel ??
                  () {
                    Navigator.of(context).pop(false);
                  },
              bgColor: AppColors.white,
            ),
            CustomButton(
              titleColor: AppColors.primary,
              width: 140.w,
              title: confirmationText,
              borderColor:AppColors.primary,
              onPressed: onTapConfirm ??
                  () {
                    Navigator.of(context).pop(true);
                  },
              bgColor: AppColors.white,
            ),
          ],
        );
      },
    );
  }
}
