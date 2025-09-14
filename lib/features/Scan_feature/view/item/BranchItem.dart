import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BranchItem extends StatelessWidget {
  final String title, address, postalCode;
  final Widget? actionButton;

  const BranchItem({
    super.key,
    required this.title,
    required this.address,
    required this.postalCode,
    this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: context.color.whiteColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextApp(
            title,
            style: TextStyle(
                fontWeight: FontWeightHelper.bold,
                color: context.color.titleColor),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(IconlyLight.location, color: Color(0xffD53B36)),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  address,
                  style: const TextStyle(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.call, color: Color.fromARGB(255, 58, 118, 239)),
              const SizedBox(width: 5),
              Text(
                postalCode,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
          if (actionButton != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: actionButton!,
            ),
        ],
      ),
    );
  }
}
