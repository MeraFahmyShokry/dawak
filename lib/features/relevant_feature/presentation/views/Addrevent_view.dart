import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/relevant_feature/presentation/items/CustomDropdownrevent.dart';
import 'package:clean_arc/features/relevant_feature/presentation/views/NewReventView.dart';
import 'package:clean_arc/features/relevant_feature/presentation/views/relevant_medical_history_view.dart';
import 'package:flutter/material.dart';

class AddRelevantScreen extends StatefulWidget {
  @override
  _AddRelevantScreenState createState() => _AddRelevantScreenState();
}

class _AddRelevantScreenState extends State<AddRelevantScreen> {
  String? selectedUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.translate.addRelevant),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomDropdownrevent(),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddNewRelevantScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      IconButton(
                        onPressed:null,
                        icon: Icon(Icons.add_circle_outline,
                            color: context.color.primaryColor),
                      ),
                      SizedBox(width: 8),
                      Text(
                        context.translate.addYourRelevant,
                        style: TextStyle(
                            color: context.color.titleColor,
                            fontWeight: FontWeightHelper.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                CustomButton(
                    width: double.infinity,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    title: context.translate.save),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
