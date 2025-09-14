import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_button_button.dart';
import '../../widget/custom_text_field.dart';
import '../../widget/text_app.dart';
import '../app_dimensions.dart';
import '../style/fonts/font_weight_helper.dart';

Future showVerticalAlertDialog(
    {required BuildContext context,
    required String title,
    String? confirmTxt,
    String? cancelTxt,
    required Function() confirm}) {
  return showDialog(
    context: context,
    builder: (BuildContext x) {
      return VerticalAlertDialog(
          cancelTxt: cancelTxt,
          confirmTxt: confirmTxt,
          title: title,
          confirm: confirm);

      // _alertDialog(title, confirm, context, "تأكيد");
    },
  );
}

class VerticalAlertDialog extends StatefulWidget {
  String? title;
  String? confirmTxt;
  String? cancelTxt;
  Function() confirm;

  VerticalAlertDialog(
      {Key? key,
      required this.title,
      this.cancelTxt,
      this.confirmTxt,
      required this.confirm})
      : super(key: key);

  @override
  State<VerticalAlertDialog> createState() => _VerticalAlertDialogState();
}

class _VerticalAlertDialogState extends State<VerticalAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 2,
      insetPadding: EdgeInsets.symmetric(horizontal: 32),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextApp(
              widget.title ?? '',
              textAlign: TextAlign.center,
              style: context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeExtraLarge,
                  fontWeight: FontWeightHelper.semiBold,
                  color: context.color.titleColor),
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(
              onPressed: widget.confirm,
              title: widget.confirmTxt ?? context.translate.confirm,
              width: double.infinity,
              height: 40,
            ),
            SizedBox(height: 8,),
            CustomButton(
              onPressed: () =>NavigationHelper.pop(context),
              title: widget.cancelTxt ?? context.translate.cancel,
              width: double.infinity,
              height: 40,
              bgColor: Colors.transparent,
              borderColor: context.color.primaryColor,
              titleColor: context.color.primaryColor,
              withBorderOnly: true,
            ),

          ],
        ),
      ),
    );
  }
}
