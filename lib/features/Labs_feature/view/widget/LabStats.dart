import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

class LabStats extends StatelessWidget {
  const LabStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildStatItem(context.translate.experience, "+10Y"),
        buildStatItem(context.translate.reviews, "+150"),
        buildStatItem(context.translate.clients, "+400"),
      ],
    );
  }

  Widget buildStatItem(String title, String value) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          TextApp(title,
              style: TextStyle(
                  fontSize: AppDimensions.fontSizeDefault,
                  color: const Color.fromARGB(255, 40, 123, 211),
                  fontWeight: FontWeightHelper.medium)),
          TextApp(value,
              style: TextStyle(
                  fontSize: AppDimensions.fontSizeDefault,
                  color: const Color.fromARGB(255, 40, 123, 211),
                  fontWeight: FontWeightHelper.medium)),
        ],
      ),
    );
  }
}
