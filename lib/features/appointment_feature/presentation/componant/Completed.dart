import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

import '../../../doctor_feature/presentation/widget/items/old_doctor_items.dart'
    show OldDoctorItems;

class CompletedgWidget extends StatelessWidget implements PreferredSizeWidget {
  const CompletedgWidget({
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
          ListView.separated(
            padding: EdgeInsets.all(5),
            separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
            shrinkWrap: true,
            itemCount: 10,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => OldDoctorItems(
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
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}
