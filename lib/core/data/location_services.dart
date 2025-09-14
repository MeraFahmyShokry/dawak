import 'dart:io';

import 'package:clean_arc/app.dart';
import 'package:clean_arc/core/presentation/widget/custom_button_button.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationController {
  static late Position myPosition;

  static Future<bool> getCurrentLocation() async {
    try {
      Position newLocalData = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      myPosition = newLocalData;
      return true;
    } catch (e) {
      // CustomTrace(StackTrace.current,
      //     message: " getCurrentLocation() }--- ${e.toString()} ");
      myPosition = Position(
        latitude: 0,
        longitude: 0,
        timestamp: DateTime.now(),
        accuracy: 1,
        altitude: 1,
        heading: 1,
        speed: 1,
        speedAccuracy: 1,
        altitudeAccuracy: 0,
        headingAccuracy: 0,
      );
      return true;
    }
  }

  static Future<bool> checkPermission(
      {BuildContext? context, required Function onTap}) async {
    LocationPermission permission = await Geolocator.checkPermission();

    bool serviceEnabled;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // CustomTrace(StackTrace.current,
      //     message: " isLocationServiceEnabled() }--- ${serviceEnabled} ");
      // showCustomToast("Location services are disabled.");
      return false;
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied) {
      // showCustomToast('You should allow location permission', context: navigatorKey.currentContext,backgroundColor: AppColors.red);
      // CustomTrace(StackTrace.current,
      //     message: " checkPermission() }--- ${"LocationPermission.denied".toString()} ");
      return false;
    } else if (permission == LocationPermission.deniedForever) {
      // CustomTrace(StackTrace.current,
      //     message: " checkPermission() }--- ${"LocationPermission.deniedForever".toString()} ");
      await Future.delayed(
        Duration(milliseconds: 0),
        () => showDialog(
          context: context!,
          builder: (context) => PermissionDialog(),
        ),
      );

      return false;
    } else {
      onTap();
      return true;
    }
  }

  static Future<void> checkPermission3(context, Function callback) async {
    LocationPermission permission = await Geolocator.requestPermission();
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        (Platform.isIOS ? false : permission == LocationPermission.denied)) {
      Future.delayed(
          Duration(milliseconds: 0),
          () => showDialog(
                context: context!,
                builder: (context) => CustomAlertDialog(
                    description: 'you_denied',
                    onOkPressed: () async {
                      Navigator.pop(context);
                      await Geolocator.requestPermission();
                      checkPermission3(context, callback);
                    }),
                barrierDismissible: false,
              ));
    } else if (permission == LocationPermission.deniedForever) {
      showDialog(
          context: context!,
          builder: (context) => CustomAlertDialog(
              description: 'you_denied_forever',
              onOkPressed: () async {
                Navigator.pop(context);
                await Geolocator.openAppSettings();
                checkPermission3(context, callback);
              }),
          barrierDismissible: false);
    } else {
      callback();
    }
  }

  bool isactive = true;
}

class PermissionDialog extends StatelessWidget {
  String? title;

  PermissionDialog({this.title});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      insetPadding: EdgeInsets.all(30),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: SizedBox(
          width: 500,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(Icons.add_location_alt_rounded,
                color: context.color.primaryColor, size: 100),
            SizedBox(height: 20.0),
            TextApp(
              title ?? 'You denied location permission , Please approve it',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20.0),
            Row(children: [
              Expanded(
                  child: CustomButton(
                title: LocaleKeys.close.tr() ?? '',
                onPressed: () => Navigator.pop(context),
              )),
              SizedBox(width: 10),
              Expanded(
                  child: CustomButton(
                      title: 'Settings',
                      onPressed: () async {
                        await Geolocator.openAppSettings();
                        Navigator.pop(context);
                      })),
            ]),
          ]),
        ),
      ),
    );
  }
}

class CustomAlertDialog extends StatelessWidget {
  final String description;
  final Function onOkPressed;

  CustomAlertDialog({required this.description, required this.onOkPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(Icons.info, size: 80, color: Theme.of(context).primaryColor),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextApp(
              description, textAlign: TextAlign.center,
              // style: robotoMedium.copyWith(fontSize: Dimensions.FONT_SIZE_LARGE),
            ),
          ),
          CustomButton(
            title: LocaleKeys.confirm.tr(),
            onPressed: () => onOkPressed(),
            // height: 40,
          ),
        ]),
      ),
    );
  }
}
