import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:dartz/dartz_streaming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/svg.dart';

class LabHeader extends StatelessWidget {
  const LabHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/images/core/svg/filter.svg',
              width: 80,
              height: 92,
              color: context.color.titleColor,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextApp("Almokhtabar Labs",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    const Icon(IconlyBold.star, color: Color(0xffFCD53F)),
                    const SizedBox(width: 5),
                    TextApp(
                      "4.7",
                      fontWeight: FontWeightHelper.bold,
                    ),
                    const SizedBox(width: 10),
                    const Icon(IconlyLight.location, color: Color(0xffD53B36)),
                    const SizedBox(width: 5),
                    TextApp("3.5 KM"),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/images/core/svg/free_labmok.svg',
                      width: 15,
                      height: 15,
                      color: context.color.titleColor,
                    ),
                    const SizedBox(width: 5),
                    TextApp("130 branches"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
