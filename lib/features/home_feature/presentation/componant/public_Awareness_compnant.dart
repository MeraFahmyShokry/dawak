import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/public_awarness_feature/presentation/views/public_awarness_view.dart';
import 'package:flutter/material.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class PublicAwarenessComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShowAllWidget(title: LocaleKeys.publicAwareness.tr(), onTap: null),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 70,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              width: 10,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                NavigationHelper.push(context, PublicAwarnessView());
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: context.color.primaryColor!, width: 2),
                    borderRadius: BorderRadius.circular(1000)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: AppImages.images.demo.png.doctor.image()),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
