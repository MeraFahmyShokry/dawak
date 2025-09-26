import 'package:clean_arc/core/utils/extensions/padding_extensions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_them.dart';

class CustomDropDownGeneric<T> extends StatefulWidget {
  const CustomDropDownGeneric({
    super.key,
    this.items,
    this.text = '',
    this.fillColor = Colors.white,
    this.onSave,
    this.borderColor,
    this.validator,
    required this.onChange,
    required this.displayItem, // Add the required displayItem function
    this.screenWidthPadding,
    this.screenHeightPadding,
    this.initialValue, this.titleText, required this.showTitle,
  });

  final List<T>? items;
  final String text;
  final Color? fillColor;
  final Color? borderColor;
  final String? titleText;
  final bool showTitle;
  final Function(T?)? onSave;
  final Function(T?)? onChange;
  final String? Function(T?)? validator;
  final double? screenWidthPadding;
  final double? screenHeightPadding;
  final T? initialValue;
  final String Function(T) displayItem; // Function to display an attribute of T

  @override
  _CustomDropDownStateGeneric<T> createState() => _CustomDropDownStateGeneric<T>();
}

class _CustomDropDownStateGeneric<T> extends State<CustomDropDownGeneric<T>> {
  T? _chosenValue;

  @override
  void initState() {
    super.initState();
    _chosenValue = widget.initialValue;
  }

  @override
  void didUpdateWidget(covariant CustomDropDownGeneric<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      setState(() {
        _chosenValue = widget.initialValue;
      });
    }
    if (widget.items != oldWidget.items) {
      setState(() {
        _chosenValue = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showTitle == true)
          TextApp(
            " ${widget.titleText ?? widget.text}",
            style: AppTextTheme.bodySmallSemiBold,
          ),
        if (widget.showTitle == true) 4.verticalSpace,
        DropdownButtonFormField<T>(
          validator: widget.validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: AppColors.secondTextColor,
            size: 20.h,
          ),
          iconSize: 25.h,
          padding: 10.padVertical+20.padHorizontal,
          decoration: InputDecoration(
            filled: true,
            contentPadding: 0.padAll,
            fillColor: AppColors.white,
            border: getBorder(),
            enabledBorder: getBorder(),
            focusedBorder: getBorder(),
            disabledBorder: getBorder(),
          ),
          value: _chosenValue,
          isExpanded: true,
          dropdownColor: AppColors.white,
          items: widget.items?.map((T value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                widget.displayItem(value), // Use the displayItem function to get the text
                style: AppTextTheme.bodyMedium.copyWith(overflow: TextOverflow.ellipsis),
              ),
            );
          }).toList(),
          hint: Text(
            widget.text,
            style:  AppTextTheme.bodySmall.copyWith(
              color: AppColors.lightGrey,
            ),
          ),
          onChanged: (T? value) {
            setState(() {
              _chosenValue = value;
            });
            widget.onChange?.call(value);
          },
          onSaved: widget.onSave,
        ),
      ],
    );
  }
  OutlineInputBorder getBorder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      style:  BorderStyle.solid ,
      width:  1,
      color: AppColors.lightGrey,
    ),
  );
}