// import 'package:flutter/material.dart';
//
// class ResponsiveHorizontalListView extends StatelessWidget {
//   const ResponsiveHorizontalListView({
//     super.key,
//     required this.itemsCount,
//     this.separatedPadding = 0,
//     required this.item,
//     this.onCurrentIndex,
//   });
//
//   final int itemsCount;
//   final double? separatedPadding;
//   final Widget item;
//   final void Function(int)? onCurrentIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: List.generate(itemsCount, (index) {
//           if (onCurrentIndex != null) onCurrentIndex!(index);
//           return Padding(
//             padding: EdgeInsets.only(
//                 right: index < itemsCount - 1 ? separatedPadding! : 0),
//             child: item,
//           );
//         }),
//       ),
//     );
//   }
// }
