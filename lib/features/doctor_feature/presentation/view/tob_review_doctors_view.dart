import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/items/old_doctor_items.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/custom_home_appbar.dart';
import 'package:clean_arc/features/home_feature/presentation/componant/search_componant.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils_package/utils_package.dart';

@RoutePage()
class TopReviewDoctorView extends StatelessWidget {
  List<String> categoryFiltteration = [
    'all',
    "Neurology",
    "Orthopedic",
    "Ophthalmology",
    "dentist",
    "Neurology",
    "Orthopedic",
    "Ophthalmology",
    "dentist",
  ];

  String SelectedCategory = 'all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: LocaleKeys.bestDoctors.tr(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SearchComponent(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: categoryFiltteration.length,
                itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: SelectedCategory == categoryFiltteration[index]
                            ? context.color.primaryColor
                            : context.color.primaryColor?.withOpacity(.2),
                        borderRadius: BorderRadius.circular(1000)),
                    child: TextApp(
                      categoryFiltteration[index].capitalizeFirstLetter(),
                      color: SelectedCategory == categoryFiltteration[index]
                          ? context.color.whiteColor
                          : context.color.titleColor,
                    )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),

                // padding: EdgeInsets.all(5),
                separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
                // shrinkWrap: true,
                itemCount: 10,
                // physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => OldDoctorItems(
                  id: '0',

                  title: "Dr. Mohamed Emad",
                  specialist: 'أخصائي طب الأعصاب',
                  rate: '4.7',
                  distance: '3.5 KM',
                  image: AppImages.images.demo.png.doctor2.path,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
