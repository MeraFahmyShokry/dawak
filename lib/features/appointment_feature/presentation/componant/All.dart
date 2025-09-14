import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Book_Appointment_feature/presentation/views/doctor_details_view.dart';
import 'package:flutter/material.dart';

import '../../../doctor_feature/presentation/widget/items/old_doctor_items.dart';

class AllWidget extends StatelessWidget implements PreferredSizeWidget {
  const AllWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          // ListView.separated(
          //   padding: EdgeInsets.all(5),
          //   separatorBuilder: (context, index) => SizedBox(
          //     height: 16,
          //   ),
          //   shrinkWrap: true,
          //   itemCount: 10,
          //   physics: NeverScrollableScrollPhysics(),
          //   itemBuilder: (context, index) =>
          //    DoctorItems(
          //     title: "Dr. Mohamed Emad",
          //     specialist: 'أخصائي طب الأعصاب',
          //     image: AppImages.images.demo.png.doctor2.path,
          //     appointmentDateTime: '10/10/2022 - 10:00 AM',
          //     distance: '21 Talat Harb St, Tahrir',
          //     onBookNow: () {},
          //     onViewProfile: () {},
          //     showBottomButtons: true,
          //     status: "Completed",
          //   ),
          // )
          OldDoctorItems(
            id: '0',
            onMenuPressed: () {},
            title: "Dr. Mohamed Emad",
            specialist: 'أخصائي طب الأعصاب',
            image: AppImages.images.demo.png.doctor2.path,
            appointmentDateTime: '10/10/2022 - 10:00 AM',
            distance: '21 Talat Harb St, Tahrir',
            onBookNow: () {
              NavigationHelper.push(context, DoctorDetailsView(
                id: '0',
                name:"Dr. Mohamed Emad" ,
              ));

            },
            onViewProfile: () {},
            showBottomButtons: true,
            status: "Completed",
          ),
          SizedBox(
            height: 10.h,
          ),
          OldDoctorItems(
            id: '0',
            onMenuPressed: () {},
            title: "Dr. Mohamed Emad",
            specialist: 'أخصائي طب الأعصاب',
            image: AppImages.images.demo.png.doctor2.path,
            appointmentDateTime: '10/10/2022 - 10:00 AM',
            distance: '21 Talat Harb St, Tahrir',
            onBookNow: () {},
            onViewProfile: () {},
            showBottomButtons: true,
            // status: "Completed",
          ),
          SizedBox(
            height: 10.h,
          ),
          OldDoctorItems(
            id: '0',

            onMenuPressed: () {},
            title: "Dr. Mohamed Emad",
            specialist: 'أخصائي طب الأعصاب',
            image: AppImages.images.demo.png.doctor2.path,
            appointmentDateTime: '10/10/2022 - 10:00 AM',
            distance: '21 Talat Harb St, Tahrir',
            onBookNow: () {},
            onViewProfile: () {},
            showBottomButtons: true,
            status: "Cancelled",
          ),
          SizedBox(
            height: 10.h,
          ),
          OldDoctorItems(
            id: '0',

            onMenuPressed: () {},
            title: "Dr. Mohamed Emad",
            specialist: 'أخصائي طب الأعصاب',
            image: AppImages.images.demo.png.doctor2.path,
            appointmentDateTime: '10/10/2022 - 10:00 AM',
            distance: '21 Talat Harb St, Tahrir',
            onBookNow: () {},
            onViewProfile: () {},
            showBottomButtons: true,
            status: "Completed",
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
