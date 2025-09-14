import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

import '../../app/enums/order_delivery_types.dart';
import '../util/app_dimensions.dart';
import '../util/style/fonts/font_weight_helper.dart';
import '../util/style/images/assets.gen.dart';

class FilterDropdownMenuButtonComponent extends StatefulWidget {
  const FilterDropdownMenuButtonComponent({super.key});

  @override
  State<FilterDropdownMenuButtonComponent> createState() =>
      _FilterDropdownMenuButtonComponentState();
}

class _FilterDropdownMenuButtonComponentState
    extends State<FilterDropdownMenuButtonComponent> {
  String _selectedFilter = 'Filter';

  final List<String> _filters = OrderDeliveryTypes.values.map((e) => e.label,).toList();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        setState(() {
          _selectedFilter = value;
        });
      },
      offset: const Offset(0, 20), // Dropdown appears below button
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
      color: context.color.whiteColor,
      elevation: 3,
      constraints: BoxConstraints(
          minHeight: 70,
          minWidth: 180
      ),
      itemBuilder: (BuildContext context) {
        return _filters.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            height: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextApp(
                  choice,
                  style: context.textStyle.copyWith(
                      fontSize: AppDimensions.fontSizeSmall,
                      fontWeight: FontWeightHelper.regular,
                      color: context.color.titleColor),
                ),
                if(_filters.indexOf(choice)<_filters.length-1)Divider(
                  thickness: 1,
                  color: context.color.white_F2F2F2,
                )
              ],
            ),
          );
        }).toList();
      },
      child: AppImages.images.core.svg.filterIcon.svg(
        width: 18,
        height: 18,
        colorFilter:
        ColorFilter.mode(context.color.secondaryColor!, BlendMode.srcIn),
      ),
    );
  }
}