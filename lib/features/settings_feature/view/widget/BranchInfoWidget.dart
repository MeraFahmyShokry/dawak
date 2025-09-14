import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BranchInfoWidget extends StatelessWidget {
  final String branchName;
  final String address;
  final VoidCallback? onChange;

  const BranchInfoWidget({
    Key? key,
    required this.branchName,
    required this.address,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child:
              Icon(IconlyLight.location, color: Colors.blue.shade900, size: 30),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                branchName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
              Text(
                address,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: TextButton(
            onPressed: onChange,
            child: Text(
              context.translate.change,
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ],
    );
  }
}
