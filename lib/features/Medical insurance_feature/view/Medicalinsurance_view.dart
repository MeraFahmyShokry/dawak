import 'dart:io';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class MedicalInsuranceScreen extends StatefulWidget {
  @override
  _MedicalInsuranceScreenState createState() => _MedicalInsuranceScreenState();
}

class _MedicalInsuranceScreenState extends State<MedicalInsuranceScreen> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LocaleKeys.medicalInsurance.tr()),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextApp(
              LocaleKeys.insertYourMedicalInsuranceImage.tr(),
              style: TextStyle(
                  fontSize: AppDimensions.fontSizeLarge,
                  color: context.color.titleColor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 260,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: _selectedImage == null
                  ? Center(
                      child: Text(LocaleKeys.noImageSelected.tr(),
                          style: TextStyle(color: Colors.grey)))
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.file(
                        _selectedImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
            ),
            const SizedBox(height: 15),
            TextButton.icon(
              onPressed: _pickImage,
              icon: Icon(Icons.add_circle_outline,
                  size: 30, color: context.color.primaryColor),
              label: Text(
                LocaleKeys.addAnotherImage.tr(),
                style: TextStyle(fontSize: 16, color: context.color.titleColor),
              ),
            ),
            SizedBox(height: 40.h),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                title: LocaleKeys.saveEdit.tr(),
                onPressed: () {
                  // if (_selectedImage == null) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //       SnackBar(
                  //         content: Text(context.)),
                  //   );
                  // } else {}
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
