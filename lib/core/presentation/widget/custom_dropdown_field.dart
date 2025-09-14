import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable

enum DropDownType {
  bottomSheetType,
  dialogType,
  dropDownType,
}

class CustomDropdownField<T> extends StatelessWidget {
  CustomDropdownField(
      {this.keykey,
      this.value,
      required this.onChanged,
      this.items,
      this.isRow = false,
      this.showTitle = true,
      this.asyncItems,
      this.filedBuilder,
      this.titleStyle,
      this.dropDownType,
      this.validator,
      this.itemBuilder,
      this.itemAsString,
      required this.title});

  Widget Function(BuildContext context, T? item)? filedBuilder;
  Widget Function(
    BuildContext context,
    T item,
    bool isSelected,
  )? itemBuilder;
  String? Function(T?)? validator;
  String Function(T)? itemAsString;
  final T? value;
  bool? isRow;
  TextStyle? titleStyle;
  bool? showTitle;
  final String title;
  final GlobalKey? keykey;
  final DropDownType? dropDownType;
  void Function(T? value) onChanged;
  List<T>? items;
  Future<List<T>> Function(String)? asyncItems;

  @override
  Widget build(BuildContext context) {
    var drob = DropdownSearch<T>(
      key: keykey,
      asyncItems: asyncItems,

      dropdownBuilder: filedBuilder,

      // filterFn: (T item, String filter) {
      //   return
      // },

      validator: validator ??
          (value) {
            if (value == null) {
              return LocaleKeys.thisFieldIsRequired.tr();
            } else {
              return null;
            }
          },

      popupProps: dropDownType == DropDownType.bottomSheetType
          ? PopupProps.bottomSheet(
              itemBuilder: itemBuilder,
              fit: FlexFit.loose,
              bottomSheetProps:
                  BottomSheetProps(backgroundColor: context.color.whiteColor))
          : dropDownType == DropDownType.dialogType
              ? PopupProps.dialog(
                  itemBuilder: itemBuilder,
                  fit: FlexFit.loose,
                  dialogProps:
                      DialogProps(backgroundColor: context.color.whiteColor))
              : dropDownType == DropDownType.dropDownType
                  ? PopupProps.menu(
                      itemBuilder: itemBuilder,
                      fit: FlexFit.loose,
                      menuProps:
                          MenuProps(backgroundColor: context.color.whiteColor))
                  : PopupProps.dialog(
                      itemBuilder: itemBuilder,
                      fit: FlexFit.loose,
                      dialogProps: DialogProps(
                          backgroundColor: context.color.whiteColor)),
      items: items ?? [],
      selectedItem: value,
      itemAsString: itemAsString,
      onChanged: onChanged,
      dropdownButtonProps: DropdownButtonProps(
        selectedIcon: AppImages.images.core.svg.bottomArrow.svg(
          width: 10,
          colorFilter:
              ColorFilter.mode(context.color.gray_717680!, BlendMode.srcIn),
        ),
      ),

      dropdownDecoratorProps: DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
          // labelText: title,
          hintText: title,
          hintStyle: titleStyle ??
              context.textStyle.copyWith(
                  fontSize: AppDimensions.fontSizeSmall,
                  fontWeight: FontWeightHelper.regular,
                  color: context.color.grayColor),
          filled: true,
          fillColor: context.color.whiteColor,
          border: InputBorder.none,
          enabledBorder: getBorder(context),
          focusedBorder: getBorder(context),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(),
          ),
          errorStyle: context.textStyle.copyWith(
              color: Theme.of(context).colorScheme.error,
              fontSize: AppDimensions.fontSizeSmall),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
        ),
      ),
    );

    return (isRow == true)
        ? Row(
            children: [
              if (showTitle == true)
                TextApp(
                  title,
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeDefault,
                      fontWeight: FontWeightHelper.regular),
                ),
              const SizedBox(width: 10),
              Expanded(child: drob)
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showTitle == true)
                TextApp(
                  title,
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeDefault,
                      fontWeight: FontWeightHelper.regular),
                ),
              const SizedBox(height: 10),
              drob
            ],
          );
  }

  OutlineInputBorder getBorder(BuildContext context, {bool isError = false}) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
            style: true ? BorderStyle.solid : BorderStyle.none,
            width: true ? 1 : 0,
            color:
                // isError == true ?
                context.color.borderColor!
            // : Colors.red,
            // color: context.color.borderColor!,
            ),
      );
}

class DropDownText extends StatelessWidget {
  final String title;
  final bool? isSelected;

  const DropDownText(
      {super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSelected == null ? EdgeInsets.zero : const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // if(isSelected!=null)
          // Icon(isSelected ? Icons.circle_outlined : Icons.circle_outlined),
          Expanded(child: TextApp(title)),
        ],
      ),
    );
  }
}
