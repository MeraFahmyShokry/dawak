import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: CustomAppBar(title: context.translate.contactus),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomContainerCard(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  SizedBox(height: 20.h),
                  CustomTextField(
                    showTitle: true,
                    controller: nameController,
                    titleText: context.translate.name,
                    hintText: context.translate.name,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    showTitle: true,
                    controller: emailController,
                    titleText: context.translate.email,
                    hintText: context.translate.email,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    showTitle: true,
                    controller: messageController,
                    titleText: context.translate.message,
                    hintText: context.translate.message,
                    minLines: 8,
                    inputType: TextInputType.multiline,
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                      width: double.infinity,
                      onPressed: () {},
                      title: context.translate.send),
                  SizedBox(height: 10.h),
                ]),
              )),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextApp(
                    context.translate.contactinfo,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomContainerCard(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(IconlyLight.message, color: Colors.blue),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: TextApp(
                              "Support Mail132@gmail.com",
                              style: TextStyle(
                                color: context.color.titleColor,
                                fontWeight: FontWeightHelper.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Icon(Icons.call_outlined,
                              color: context.color.primaryColor),
                          SizedBox(width: 8.w),
                          TextApp(
                            "Hotline: 19517",
                            style: TextStyle(
                              fontWeight: FontWeightHelper.bold,
                              color: context.color.titleColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
