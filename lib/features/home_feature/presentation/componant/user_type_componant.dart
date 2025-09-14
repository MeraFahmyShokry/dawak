
import 'package:clean_arc/core/constant.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/account_type_model.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/item/AccountTypeItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class UserTypeComponent extends StatelessWidget {
  const UserTypeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AccountTypeModel> accountTypes = getUserType2(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              ShowAllWidget(title: LocaleKeys.categories.tr(), onTap: null),
        ),
        SizedBox(
          height: 16,
        ),
        GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: 1.5,
          ),
          itemCount: accountTypes.length,
          itemBuilder: (context, index) {
            return AccountTypeItem(
                imagePath: accountTypes[index].image,
                imageSvgPath: accountTypes[index].image,
                label: accountTypes[index].label,
                onTap: accountTypes[index].OnTap

                //     () {
                //
                //   if (accountTypes[index].label == "المختبر") {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => LabsScreen()),
                //     );
                //   } else if (accountTypes[index].label == "سوق الأدوية") {
                //
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => PharmaciesDetailsScreen()),
                //     );
                //     // Navigator.push(
                //     //   context,
                //     //   MaterialPageRoute(
                //     //       builder: (context) => PharmaciesScreen()),
                //     // );
                //   } else if (accountTypes[index].label == "مركز الأشعة") {
                //     // Navigator.push(
                //     //   context,
                //     //   MaterialPageRoute(builder: (context) => ScanScreen()),
                //     // );
                //   } else if (accountTypes[index].label == "الصيدلية") {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => PharmaciesScreen()),
                //     );
                //   } else {
                //     NavigationHelper.push(context, DoctorsView());
                //   }
                //   //
                //
                //   print('Selected:${accountTypes[index].label}');
                // },
                );
          },
        ),
      ],
    );
  }
}
