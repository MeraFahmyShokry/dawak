import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/payment_componant/items/saved_visa_item.dart';
import 'package:flutter/material.dart';

class SavedVisaCardComponent extends StatefulWidget {
  const SavedVisaCardComponent({super.key});

  @override
  State<SavedVisaCardComponent> createState() => _SavedVisaCardComponentState();
}

class _SavedVisaCardComponentState extends State<SavedVisaCardComponent> {
  PageController _pageController = PageController(
    viewportFraction: 0.7,
    initialPage: 1,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // Future.delayed(
    //     Duration(
    //       milliseconds: 500,
    //     ), () {
    //   _pageController.animateTo(1,
    //       duration: Duration(milliseconds: 500), curve: Curves.bounceIn);
    // });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        // أي تغيير في الـ state بيعمل rebuild
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 174.h,
      width: double.infinity,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 5,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double value = 1;
              if (_pageController.position.haveDimensions) {
                value = (_pageController.page! - index).abs();
                value = (1 - (value * 0.2)).clamp(0.8, 1.0);

              }
              return Center(
                child: Transform.scale(
                  scale: value,
                  child: SavedVisaItem(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
