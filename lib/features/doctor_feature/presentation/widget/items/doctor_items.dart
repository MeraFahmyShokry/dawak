// import 'package:clean_arc/core/utils_package/utils_package.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';

// class DoctorItems extends StatelessWidget {
//   String title;
//   String specialist;
//   String rate;
//   String distance;
//   String image;

//   DoctorItems({
//     super.key,
//     required this.title,
//     required this.specialist,
//     required this.rate,
//     required this.distance,
//     required this.image,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//           color: context.color.whiteColor,
//           borderRadius: BorderRadius.circular(10),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               spreadRadius: 2,
//               blurRadius: 3,
//               offset: Offset(0, 0),
//             ),
//           ]),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child:
//                 Image.asset(image, width: 115, height: 140, fit: BoxFit.cover),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 TextApp(
//                   title,
//                   fontWeight: FontWeightHelper.bold,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 TextApp(
//                   specialist,
//                   color: context.color.descriptionColor,
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           IconlyBold.star,
//                           color: Color(0xffFCD53F),
//                         ),
//                         TextApp(
//                           rate,
//                           fontWeight: FontWeightHelper.bold,
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           IconlyLight.location,
//                           color: Color(0xffD53B36),
//                         ),
//                         TextApp(
//                           distance,
//                           fontWeight: FontWeightHelper.bold,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           IconlyLight.calendar,
//                           color: Color(0xff15A042),
//                         ),
//                         TextApp(LocaleKeys.availableNow.tr())
//                       ],
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: CustomButton(
//                         height: 40,
//                         onPressed: () {},
//                         title: LocaleKeys.bookingNow.tr(),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:clean_arc/core/presentation/widget/cached_network_image_utill.dart';
import 'package:clean_arc/core/presentation/widget/custom_marquee_widget.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/views/doctor_details_view.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/doctor_model/doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class DoctorItems extends StatelessWidget {
  final DoctorModel? doctor;

  const DoctorItems({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationHelper.push(
          context,
          DoctorDetailsView(id: doctor?.id ?? '', name: doctor?.name ?? ''),
        );
      },
      child: Container(
        padding: 10.padAll,
        decoration: BoxDecoration(
          color: context.color.whiteColor,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (doctor?.doctorImage?.isNotEmpty??false)
              ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: CustomCachedNetworkImage(
                  imageUrl: doctor?.doctorImage??"",
                  width: 90.w,
                  height: 110.w,
                  fit: BoxFit.cover,
                ),
              ),
            10.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (doctor?.name?.isNotEmpty??false)
                        Expanded(
                          child: Text(
                            doctor?.name??"",
                            style: AppTextTheme.bodySmallMediumBold,
                          ),
                        ),
                      5.horizontalSpace,
                      if(!(doctor?.isAvailable??false))
                      AppImages.images.core.svg.unavailable.svg(

                      )
                    ],
                  ),
                  if (doctor?.specialistName?.isNotEmpty??false)
                    Text(
                      doctor?.specialistName??"",
                      style: AppTextTheme.bodyXSmall.copyWith(
                        color: AppColors.grey2,
                      ),
                    ),
                  2.verticalSpace,
                  if (doctor?.reviewRating != null || doctor?.location != null)
                    Row(
                      children: [
                        if (doctor?.reviewRating != null) ...[
                          AppImages.images.core.svg.star.svg(
                            width: 20.w,
                            height: 20.w,
                          ),
                          2.horizontalSpace,
                          Text(doctor?.reviewRating?.toString()??"", style: AppTextTheme.bodySmallMediumBold),
                        ],
                        10.horizontalSpace,
                        if (doctor?.location?.isNotEmpty??false) ...[
                          AppImages.images.core.svg.locationIcon.svg(
                            width: 20.w,
                            height: 20.w,
                          ),
                          2.horizontalSpace,
                          Text(
                            doctor?. location??"",
                            style: AppTextTheme.bodySmallMediumBold,
                          ),
                        ],
                      ],
                    ),


                  // if (appointmentDateTime != null)
                  //   Row(
                  //     children: [
                  //       AppImages.images.core.svg.available.svg(width: 20.w,height: 20.w),
                  //       2.horizontalSpace,
                  //       Text(
                  //         appointmentDateTime!,
                  //         style: AppTextTheme.linkSmall.copyWith(
                  //           decorationColor: AppColors.green,
                  //           color: AppColors.green
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // if (doctor?.location != null)
                  //   Row(
                  //     children: [
                  //       Icon(
                  //         IconlyLight.location,
                  //         color: context.color.redColor,
                  //       ),
                  //       SizedBox(width: 5.w),
                  //       TextApp(doctor?.location??"", fontWeight: FontWeightHelper.bold),
                  //     ],
                  //   ),
                  Row(
                    children: [
                      AppImages.images.core.svg.available.svg(
                        width: 20.w,
                        height: 20.w,
                      ),
                      2.horizontalSpace,
                      Expanded(
                        child: CustomMarquee(
                          child: Text(
                            LocaleKeys.availableNow.tr(),
                            style: AppTextTheme.linkSmall.copyWith(
                              decorationColor: AppColors.green,
                              color: AppColors.green,
                            ),
                          ),
                        ),
                      ),
                      10.horizontalSpace,
                      CustomButton(
                        padding: 3.padVertical+15.padHorizontal,
                        borderRadius: 10.r,
                        onPressed: () {
                          NavigationHelper.push(
                            context,
                            DoctorDetailsView(
                              id: doctor?.id ?? '',
                              name: doctor?.name ?? '',
                            ),
                          );
                        },
                        title: LocaleKeys.bookNow.tr(),
                        child: Text(
                          LocaleKeys.bookNow.tr(),
                          style: AppTextTheme.bodySmall
                              .copyWith(color: AppColors.white),

                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
