import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Navigator.canPop(context)?
    IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    ):SizedBox();
  }
}
class CustomBackButton2 extends StatelessWidget {
  BuildContext context;

  CustomBackButton2(this.context);

  @override
  Widget build(BuildContext x) {
    return  Navigator.canPop(context)?
    IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    ):SizedBox();
  }
}
