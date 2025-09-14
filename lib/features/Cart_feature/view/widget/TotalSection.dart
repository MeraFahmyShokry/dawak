import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Cheackout_feature/view/Cheackout_view.dart';
import 'package:flutter/material.dart';

class TotalSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTotalRow(context, context.translate.subtotal, "\$444"),
        buildTotalRow(context, context.translate.tax, "\$54"),
        buildTotalRow(context, context.translate.total, "\$45",
            isBold: true, color: Colors.blue),
        SizedBox(height: 10),
        buildActionButtons(context),
      ],
    );
  }

  Widget buildTotalRow(BuildContext context, String label, String value,
      {bool isBold = false, Color color = Colors.black}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextApp(label,
              style: TextStyle(
                color: context.color.titleColor,
                fontSize: AppDimensions.fontSizeDefault,
              )),
          TextApp(value,
              style: TextStyle(
                color: context.color.titleColor,
                fontSize: AppDimensions.fontSizeDefault,
                fontWeight: FontWeightHelper.semiBold,
              )),
        ],
      ),
    );
  }

  Widget buildActionButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            withBorderOnly: true,
            bgColor: Colors.transparent,
            borderColor: context.color.primaryColor!,
            titleColor: context.color.primaryColor!,
            onPressed: () {
              Navigator.pop(context);
            },
            titleFontSize: AppDimensions.fontSizeDefault,
            title: context.translate.addItem,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
            child: CustomButton(
          titleFontSize: AppDimensions.fontSizeDefault,
          title: context.translate.next,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutScreen(),
                ));
          },
        )),
      ],
    );
  }
}
