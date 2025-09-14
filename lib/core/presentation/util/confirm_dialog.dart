import 'package:clean_arc/core/presentation/widget/custom_button_button.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future showConfirmReasonDialog(
    {required BuildContext context,
    required String title,
    bool? isLoading,
    TextEditingController? textEditingController,
    required Function() confirm}) {
  return showDialog(
    context: context,
    builder: (BuildContext x) {
      return ConfirmReasonDialog(
          title: title,
          isLoading: isLoading,
          textEditingController: textEditingController,
          confirm: confirm);

      // _alertDialog(title, confirm, context, "تأكيد");
    },
  );
}

class ConfirmReasonDialog extends StatefulWidget {
  String? title;
  bool? isLoading;
  Function() confirm;
  TextEditingController? textEditingController;

  // const ConfirmReasonDialog({});

  ConfirmReasonDialog(
      {Key? key,
      required this.title,
      required this.isLoading,
      required this.textEditingController,
      required this.confirm})
      : super(key: key);

  @override
  State<ConfirmReasonDialog> createState() => _ConfirmReasonDialogState();
}

class _ConfirmReasonDialogState extends State<ConfirmReasonDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              widget.title ?? '',
              style: TextStyle().copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontSizeLarge),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxLines: 5,
              minLines: 3,
              titleText: LocaleKeys.reason.tr(),
              hintText: LocaleKeys.reason.tr(),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    isLoading: widget.isLoading ?? false,

                    // borderRadius: 10,
                    child: Text(LocaleKeys.confirm.tr(),
                        style: context.textStyleButton.copyWith()),
                    onPressed: () {
                      widget.confirm();
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    bgColor: Colors.transparent,
                    // borderRadius: 10,
                    child: Text(
                      LocaleKeys.cancel.tr(),
                      style: context.textStyleButton.copyWith(
                        color: context.color.primaryColor,
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}