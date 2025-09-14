import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_arc/core/presentation/extintions/widget_extensions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final Color? placeholderColor;
  final Color? errorColor;
  final Duration fadeInDuration;
  final Duration fadeOutDuration;
  final double borderRadius;
  final Border? border;

  CustomCachedNetworkImage({
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.errorWidget,
    this.placeholderColor,
    this.errorColor,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeOutDuration = const Duration(milliseconds: 300),
    this.borderRadius = 0.0,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
      ),
      clipBehavior: Clip.hardEdge,
      // Ensures the border radius is applied to the child
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        placeholder: (context, url) =>
            placeholder ??
            Container(
              width: width,
              height: height,
              color: placeholderColor ?? Colors.grey[200],
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        errorWidget: (context, url, error) =>
            errorWidget ??
            Container(
              width: width,
              height: height,
              color: errorColor ?? Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: AppImages.images.core.logos.logodawak
                    .image(width: 50, height: 50),
              ),
            ),
        fadeInDuration: fadeInDuration,
        fadeOutDuration: fadeOutDuration,
      ),
    );
  }
}
