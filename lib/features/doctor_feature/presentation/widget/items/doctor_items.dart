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
//                         TextApp(context.translate.availableNow)
//                       ],
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: CustomButton(
//                         height: 40,
//                         onPressed: () {},
//                         title: context.translate.bookingNow,
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
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/views/doctor_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class DoctorItems extends StatelessWidget {
  final String? title;
  final String? id;
  final String? specialist;
  final String? rate;
  final String? distance;
  final String? image;
  final String? appointmentDateTime;
  final String? location;
  final String? status;

  const DoctorItems({
    super.key,
    this.title,
    this.id,
    this.specialist,
    this.rate,
    this.distance,
    this.image,
    this.appointmentDateTime,
    this.location,
    this.status,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationHelper.push(
            context,
            DoctorDetailsView(
              id: id ?? '',
              name: title ?? '',
            ));
      },
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(12.w),
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
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (image != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: CustomCachedNetworkImage(
                          imageUrl: image!,
                          width: 100.w,
                          height: 130.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (title != null)
                                Expanded(
                                  child: TextApp(
                                    title!,
                                    fontWeight: FontWeightHelper.bold,
                                  ),
                                ),
                            ],
                          ),
                          if (title != null) SizedBox(height: 5.h),
                          if (specialist != null)
                            TextApp(
                              specialist!,
                              color: context.color.descriptionColor,
                            ),
                          if (specialist != null) SizedBox(height: 5.h),
                          if (rate != null || distance != null)
                              Row(
                              children: [
                                if (rate != null)
                                  Row(
                                    children: [
                                      const Icon(IconlyBold.star,
                                          color: Color(0xffFCD53F)),
                                      TextApp(
                                        rate!,
                                        fontWeight: FontWeightHelper.bold,
                                      ),
                                    ],
                                  ),
                                if (rate != null && distance != null)
                                  SizedBox(width: 10.w),
                                if (distance != null)
                                  Row(
                                    children: [
                                      const Icon(IconlyLight.location,
                                          color: Color(0xffD53B36)),
                                      TextApp(
                                        distance!,
                                        fontWeight: FontWeightHelper.bold,
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                          if (rate != null || distance != null)
                            SizedBox(height: 5.h),
                          if (appointmentDateTime != null)
                            Row(
                              children: [
                                const Icon(IconlyBold.calendar,
                                    color: Colors.blue),
                                SizedBox(width: 5.w),
                                TextApp(
                                  appointmentDateTime!,
                                  fontWeight: FontWeightHelper.bold,
                                ),
                              ],
                            ),
                          if (location != null)
                            Row(
                              children: [
                                Icon(IconlyLight.location,
                                    color: context.color.redColor),
                                SizedBox(width: 5.w),
                                TextApp(
                                  location!,
                                  fontWeight: FontWeightHelper.bold,
                                ),
                              ],
                            ),
                          SizedBox(height: 5.h),
                            Row(
                              children: [
                              Icon(IconlyLight.calendar,
                                  color: context.color.grayColor),
                              TextApp(context.translate.availableNow),
                              SizedBox(width: 10.w),
                              Expanded(
                                  child: CustomButton(
                                    height: 40.h,
                                    onPressed: () {
                                    print("idididid ${id}");
                                    NavigationHelper.push(
                                        context,
                                        DoctorDetailsView(
                                          id: id ?? '',
                                          name: title ?? '',
                                        ));
                                  },
                                  title: context.translate.bookingNow,
                                ),
                              ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
