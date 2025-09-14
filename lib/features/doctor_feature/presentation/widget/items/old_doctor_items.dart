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

class OldDoctorItems extends StatelessWidget {
  final String? id;
  final String? title;
  final String? specialist;
  final String? rate;
  final String? distance;
  final String? address;
  final String? image;
  final String? appointmentDateTime;
  final String? location;
  final String? status;
  final String? availableTime;
  final bool? isAvilable;
  final VoidCallback? onBookNow;
  final VoidCallback? onViewProfile;
  final VoidCallback? onMenuPressed;
  final bool showBottomButtons;

  const OldDoctorItems({
    super.key,
    required this.id,
    this.title,
    this.specialist,
    this.rate,
    this.distance,
    this.address,
    this.image,
    this.isAvilable,
    this.availableTime,
    this.appointmentDateTime,
    this.location,
    this.status,
    this.onBookNow,
    this.onViewProfile,
    this.onMenuPressed,
    this.showBottomButtons = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('idid ${id}');
        NavigationHelper.push(
            context,
            DoctorDetailsView(
              id: id!,
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: CustomCachedNetworkImage(
                        imageUrl: image ?? '',
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
                              Expanded(
                                child: TextApp(
                                  title ?? '------',
                                  fontWeight: FontWeightHelper.bold,
                                ),
                              ),
                              GestureDetector(
                                onTap: onMenuPressed,
                                child: const Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          TextApp(
                            specialist ?? '------',
                            color: context.color.descriptionColor,
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Row(
                                children: [
                                  const Icon(IconlyBold.star,
                                      color: Color(0xffFCD53F)),
                                  TextApp(
                                    rate ?? '0',
                                    fontWeight: FontWeightHelper.bold,
                                  ),
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Row(
                                children: [
                                  const Icon(IconlyLight.location,
                                      color: Color(0xffD53B36)),
                                  TextApp(
                                    distance ?? '0',
                                    fontWeight: FontWeightHelper.bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                          // Row(
                          //   children: [
                          //     const Icon(IconlyLight.location,
                          //         color: Colors.red),
                          //     SizedBox(width: 5.w),
                          //     TextApp(
                          //       address ?? '------',
                          //       fontWeight: FontWeightHelper.regular,
                          //     ),
                          //   ],
                          // ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              isAvilable == true
                                  ? Row(
                                      children: [
                                        const Icon(IconlyLight.calendar,
                                            color: Color(0xff15A042)),
                                        TextApp(availableTime == 'Now'
                                            ? context.translate.availableNow
                                            : availableTime ?? ''),
                                      ],
                                    )
                                  : SizedBox(),
                              SizedBox(width: 5.w),
                              Expanded(
                                child: CustomButton(
                                  height: 40.h,
                                  onPressed: () {
                                    NavigationHelper.push(
                                        context,
                                        DoctorDetailsView(
                                          id: id!,
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
                // if (showBottomButtons) ...[
                //   if (status == "Cancelled")
                //     Container(
                //       width: 80.w,
                //       height: 30.h,
                //       alignment: Alignment.center,
                //       decoration: BoxDecoration(
                //         border: Border.all(color: Color(0xffD53B36)),
                //         color: Colors.transparent,
                //         borderRadius: BorderRadius.circular(30.r),
                //       ),
                //       child: TextApp(
                //         context.translate.cancelled,
                //         fontWeight: FontWeightHelper.bold,
                //         color: Color(0xffD53B36),
                //       ),
                //     )
                //   else if (status == "Completed")
                //     Container(
                //       width: 80.w,
                //       height: 30.h,
                //       alignment: Alignment.center,
                //       decoration: BoxDecoration(
                //         border: Border.all(color: Color(0xff15A042)),
                //         color: Colors.transparent,
                //         borderRadius: BorderRadius.circular(30.r),
                //       ),
                //       child: TextApp(
                //         context.translate.completed,
                //         fontWeight: FontWeightHelper.bold,
                //         color: Color(0xff15A042),
                //       ),
                //     )
                //   else
                //     Padding(
                //       padding: EdgeInsets.only(top: 5.h),
                //       child: Row(
                //         children: [
                //           if (onBookNow != null)
                //             Expanded(
                //               child: CustomButton(
                //                 height: 40.h,
                //                 onPressed: () {
                //                   NavigationHelper.push(
                //                       context,
                //                       DoctorDetailsView(
                //                         id: '0',
                //                         name: "Dr. Mohamed Emad",
                //                       ));
                //                 }!,
                //                 title: context.translate.bookingNow,
                //               ),
                //             ),
                //           if (onBookNow != null && onViewProfile != null)
                //             SizedBox(width: 10.w),
                //           if (onViewProfile != null)
                //             Expanded(
                //               child: CustomButton(
                //                 bgColor: Colors.transparent,
                //                 borderColor: context.color.primaryColor,
                //                 withBorderOnly: true,
                //                 height: 40.h,
                //                 onPressed: onViewProfile!,
                //                 title: context.translate.cancel,
                //                 titleColor: context.color.primaryColor,
                //               ),
                //             ),
                //         ],
                //       ),
                //     ),
                // ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
