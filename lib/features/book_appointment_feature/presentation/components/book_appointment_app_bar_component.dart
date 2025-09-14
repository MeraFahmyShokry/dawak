// import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
// import 'package:flutter/material.dart';
//
// import '../../../../core/presentation/util/app_dimensions.dart';
// import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
// import '../../../../core/presentation/util/style/images/assets.gen.dart';
// import '../../../../core/presentation/util/style/images/fonts.gen.dart';
// import '../../../../core/presentation/component/text_app.dart';
// import '../../../../core/routing/navigation_helper.dart';
// import 'dart:math' as math;
//
// class BookAppointmentAppBarComponent extends StatelessWidget implements PreferredSizeWidget{
//   const BookAppointmentAppBarComponent({
//     super.key, this.leadingPadding=0,required this.title,
//   });
//
//   final String title;
//   final double? leadingPadding;
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Padding(
//         padding: EdgeInsetsDirectional.only(start: 16+leadingPadding!),
//         child: TextApp(
//           title,
//           style: context.textStyle.copyWith(
//               fontSize: AppDimensions.fontSizeExtraLarge,
//               fontWeight: FontWeightHelper.semiBold,
//               color: context.color.titleColor),
//         ),
//       ),
//       // leading: Padding(
//       //   padding: EdgeInsetsDirectional.all(8+leadingPadding!),
//       //   child: GestureDetector(
//       //     onTap: () => NavigationHelper.pop(context),
//       //     child: Transform.rotate(
//       //       angle: context.isEnLocale? 0 : math.pi,
//       //       child: UnconstrainedBox(
//       //         child: AppImages.images.core.svg.backBtnArrow.svg(
//       //           width: 7,
//       //           height: 14,
//       //           colorFilter: ColorFilter.mode(context.color.secondaryColor!, BlendMode.srcIn)
//       //         ),
//       //       )/*image(
//       //           width: 50, height: 50, color: context.color.secondaryColor)*/,
//       //     ),
//       //   ),
//       // ),
//       // leadingWidth: 0,
//       backgroundColor: context.color.whiteColor,
//       surfaceTintColor: context.color.whiteColor,
//     );
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }