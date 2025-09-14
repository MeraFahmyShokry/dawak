// import 'package:clean_arc/core/presentation/component/CustomAppBar.dart';
// import 'package:clean_arc/core/presentation/component/custom_dropdown_field.dart';
// import 'package:clean_arc/core/utils_package/utils_package.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';
//
// import '../items/UploadImageWidget.dart';
//
// class AddNewRelevantScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(title: "acount >addRelevant"),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.person, color: Colors.blue),
//                   SizedBox(width: 8),
//                   TextApp(
//                     context.translate.personalinfo,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 16),
//               CustomTextField(
//                   fillColor: context.color.whiteColor,
//                   showTitle: true,
//                   titleText: context.translate.firstName +
//                       " " +
//                       context.translate.lastName,
//                   hintText: context.translate.enterYourName),
//               SizedBox(height: 10),
//               CustomTextField(
//                   fillColor: context.color.whiteColor,
//                   showTitle: true,
//                   titleText: context.translate.nationalIdPassportId,
//                   hintText: context.translate.enterNationalIdPassportId),
//               SizedBox(height: 10),
//               CustomTextField(
//                   fillColor: context.color.whiteColor,
//                   showTitle: true,
//                   titleText: context.translate.firstName +
//                       " " +
//                       context.translate.lastName,
//                   hintText: context.translate.enterYourName),
//               SizedBox(height: 10),
//               CustomDropdownField(
//                   onChanged: (value) {},
//                   title: context.translate.gender,
//                   dropDownType: DropDownType.dropDownType,
//                   items: ["Male", "Female"]),
//               SizedBox(height: 10),
//               CustomTextField(
//                 fillColor: context.color.whiteColor,
//                 showTitle: true,
//                 titleText: context.translate.birthDate,
//                 hintText: context.translate.birthDate,
//                 suffixIcon: Icon(
//                   IconlyLight.calendar,
//                   color: Colors.blue,
//                   size: 24,
//                 ),
//               ),
//               SizedBox(height: 10),
//               CustomDropdownField(
//                   onChanged: (value) {},
//                   title: context.translate.gender,
//                   dropDownType: DropDownType.dropDownType,
//                   items: ["Male", "Female"]),
//               SizedBox(height: 10),
//               UploadImageWidget(),
//               SizedBox(height: 20),
//               CustomButton(
//                   width: double.infinity,
//                   onPressed: () {},
//                   title: context.translate.next),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
