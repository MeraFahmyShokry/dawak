import 'package:clean_arc/core/utils/app_colors.dart';
import 'package:clean_arc/core/utils/app_text_them.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      this.hintText,
      this.titleText,
      this.showTitle = false,
      this.controller,
      this.focusNode,
      this.nextFocus,
      this.isEnabled = true,
      this.inputType = TextInputType.text,
      this.inputAction = TextInputAction.next,
      this.maxLines,
      this.onSuffixTap,
      this.fillColor,
      this.onSubmit,
      this.onChanged,
      this.capitalization = TextCapitalization.none,
      this.isCountryPicker = false,
      this.isShowBorder = true,
      this.isShowSuffixIcon = false,
      this.onTap,
      this.isPassword = false,
      this.suffixIcon,
      this.prefixIcon,
      this.isSearch = false,
      this.inputDecoration,
      this.minLines = 1,
      this.onValidate,
      this.hintStyle,
      this.onSaved})
      : super(key: key);
  final String? hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Color? fillColor;
  final int? maxLines;
  final int minLines;
  final TextStyle? hintStyle;

  final bool isPassword;
  final String? titleText;
  final bool showTitle;
  final bool isCountryPicker;
  final bool isShowBorder;
  final bool isShowSuffixIcon;
  final Function? onTap;
  final Function(String?)? onChanged;
  final Function? onSuffixTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isSearch;
  final Function? onSubmit;
  final bool isEnabled;
  final TextCapitalization capitalization;
  final InputDecoration? inputDecoration;
  final String? Function(String?)? onValidate;
  final Function(String?)? onSaved;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.showTitle == true)
          TextApp(
            " ${widget.titleText ?? widget.hintText}",
            style: AppTextTheme.bodySmallSemiBold,
          ),
        if (widget.showTitle == true) 4.verticalSpace,
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLines: widget.isPassword == true ? 1 : widget.maxLines,
          minLines: widget.minLines,
          controller: widget.controller,
          focusNode: widget.focusNode,
          style: AppTextTheme.bodyMedium,
          textInputAction: widget.inputAction,
          keyboardType: widget.inputType,
          cursorColor: Theme.of(context).primaryColor,
          textCapitalization: widget.capitalization,
          enabled: widget.isEnabled,
          autofocus: false,
          onSaved: widget.onSaved,
          //onChanged: widget.isSearch ? widget.languageProvider.searchLanguage : null,
          obscureText: widget.isPassword == true ? _obscureText : false,
          inputFormatters: widget.inputType == TextInputType.phone
              ? <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp('[0-9+]'))
                ]
              : null,
          decoration: widget.inputDecoration ??
              InputDecoration(
                errorStyle: context.textStyle.copyWith(
                    color: Theme.of(context).colorScheme.error,
                    fontSize: AppDimensions.fontSizeSmall),
                focusedBorder: getBorder(),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 1,
                    color: AppColors.lightGrey,
                  ),
                ),
                enabledBorder: getBorder(),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                border: getBorder(),
                isDense: true,
                hintText: widget.hintText ?? '',
                fillColor: widget.fillColor ?? AppColors.white,
                hintStyle: widget.hintStyle ??
                    AppTextTheme.bodySmall.copyWith(
                      color: AppColors.lightGrey,
                    ),
                filled: true,
                prefixIcon: widget.prefixIcon != null
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: AppDimensions.paddingSizeLarge,
                            right: AppDimensions.paddingSizeSmall),
                        child: widget.prefixIcon,
                      )
                    : const SizedBox.shrink(),
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 23, maxHeight: 20),
                suffixIcon: (widget.suffixIcon != null || widget.isPassword)
                    ? widget.isPassword
                        ? IconButton(
                            icon: Icon(
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.3)),
                            onPressed: _toggle)
                        : widget.suffixIcon
                    : null,
              ),
          onTap: widget.onTap as void Function()?,
          onFieldSubmitted: (text) => widget.nextFocus != null
              ? FocusScope.of(context).requestFocus(widget.nextFocus)
              : widget.onSubmit != null
                  ? widget.onSubmit!(text)
                  : null,
          onChanged: widget.onChanged as void Function(String)?,
          validator: widget.onValidate,
        ),
      ],
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  OutlineInputBorder getBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          style: widget.isShowBorder ? BorderStyle.solid : BorderStyle.none,
          width: widget.isShowBorder ? 1 : 0,
          color: AppColors.lightGrey,
        ),
      );
}
