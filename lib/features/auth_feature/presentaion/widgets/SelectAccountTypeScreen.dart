import 'package:clean_arc/core/constant.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/domain/model/account_type_model.dart';
import 'package:clean_arc/features/auth_feature/presentaion/view/register/register_view.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/SignUpText.dart';
import 'package:clean_arc/features/auth_feature/presentaion/widgets/item/AccountTypeItem.dart';
import 'package:flutter/material.dart';

class SelectAccountTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<AccountTypeModel> accountTypes =     getUserType(context);


    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.h,
            ),
            TextApp(
              context.translate.createAccount,
              style: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeExtraLarge,
                fontWeight: FontWeightHelper.semiBold,
                color: context.color.containerLinear2,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 8.0.h,
              decoration: BoxDecoration(
                color: context.color.borderColor,
                borderRadius: BorderRadius.all(Radius.circular(12.sp)),
              ),
              child: ClipRRect(
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.all(Radius.circular(12.sp)),
                  color: context.color.primaryColor,
                  value: 0.30,
                  backgroundColor: context.color.greyCounterBorderColor,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      context.color.primaryColor!),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            TextApp(
              context.translate.select_account_type,
              style: context.textStyle.copyWith(
                fontSize: AppDimensions.fontSizeDefault,
                fontWeight: FontWeightHelper.medium,
                color: context.color.containerLinear2,
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 20.h,
                  childAspectRatio: 1,
                ),
                itemCount: accountTypes.length,
                itemBuilder: (context, index) {
                  return AccountTypeItem(
                    imagePath: accountTypes[index].image!,
                    label: accountTypes[index].label,
                    onTap: () {
                      print('Selected: ${accountTypes[index].label}');
                    },
                  );
                },
              ),
            ),
            CustomButton(
                width: double.infinity,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterView()),
                  );
                  print("dsdsdsdddsdsdsdd");
                },
                child: TextApp(
                  context.translate.next,
                  style: context.textStyleButton,
                )),
            SizedBox(height: 16),
            SignUpText(
              text: context.translate.have_an_account,
              actionText: context.translate.signIn,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
