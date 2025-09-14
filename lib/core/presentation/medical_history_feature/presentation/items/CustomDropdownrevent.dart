import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/custom_card_container.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

class CustomDropdownrevent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomContainerCard(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextApp(
                "Marwa Ahmed",
                style: TextStyle(
                  fontSize: AppDimensions.fontSizeDefault,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
              ),
            ],
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: context.color.primaryColor,
          ),
        ],
      ),
    );
  }
}
