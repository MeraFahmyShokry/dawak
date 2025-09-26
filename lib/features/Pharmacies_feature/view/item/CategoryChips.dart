import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CategoryChips extends StatefulWidget {
  final List<String> categories;
  final Function(String) onCategorySelected;

  const CategoryChips({
    super.key,
    required this.categories,
    required this.onCategorySelected,
  });

  @override
  _CategoryChipsState createState() => _CategoryChipsState();
}

class _CategoryChipsState extends State<CategoryChips> {
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.categories.map((category) {
          final bool isSelected = selectedCategory == category;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: ChoiceChip(
              label: TextApp(
              "context.tr2(category)",
                style: TextStyle(
                  fontSize: AppDimensions.fontSizeDefault,
                  color: isSelected ? Colors.white : context.color.titleColor,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
              selected: isSelected,
              backgroundColor: context.color.primaryColor?.withOpacity(.15),
              selectedColor: context.color.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              onSelected: (selected) {
                setState(() {
                  selectedCategory = category;
                });
                widget.onCategorySelected(category);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
