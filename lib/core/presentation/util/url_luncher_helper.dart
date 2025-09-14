import 'dart:io';

import 'package:clean_arc/core/presentation/widget/screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherPhone extends StatelessWidget {
  final Widget child;
  String phone;

  UrlLauncherPhone({super.key, required this.phone, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!phone.contains('966')) {
          phone = '+966${phone}';
        }

        launchUrlString('tel://${phone}');
      },
      child: child,
    );
  }
}

class UrlLauncherMap extends StatelessWidget {
  final String latitude;
  final String longitude;
  final String address;
  final Widget child;

  UrlLauncherMap(
      {required this.latitude,
      required this.longitude,
      required this.child,
      required this.address});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {

        print("latitudelatitude ${latitude}");
        print("longitudelongitude ${longitude}");

        late String gMapsUrl;
        if (latitude.isEmpty || longitude.isEmpty) {
          String query = Uri.encodeComponent(address);
          gMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$query';
        } else {
          gMapsUrl =
          'https://www.google.com/maps?q=$latitude,$longitude&travelmode=driving'; }

        launchUrlString('$gMapsUrl');
      },
      child: child,
    );
  }
}

class UrlLauncherWhatsapp extends StatefulWidget {
  final Widget child;
  final String phone;
  final String message;

  const UrlLauncherWhatsapp(
      {super.key, required this.phone, required this.child, required this.message});

  @override
  State<UrlLauncherWhatsapp> createState() => _UrlLauncherWhatsappState();
}

class _UrlLauncherWhatsappState extends State<UrlLauncherWhatsapp>
    with ScreenUtils {
  void openWhatsapp({required String text, required String number}) async {
    String url() {
      if (Platform.isAndroid) {

        String   phoneNumber = number.replaceAll(
          new RegExp('^00966|^966|^0966|^0'),
          '+966',
        );



        // add the [https]
        if (!phoneNumber.contains('966')) {
          phoneNumber = '+966${number}'.replaceAll(' ', '');
        }
        print("number ${number}");
        return "https://wa.me/$phoneNumber/?text=${text.replaceAll('null', ' ------ ')}"; // new line
      } else {
        // add the [https]
        return
          "https://api.whatsapp.com/send?phone=$number=${Uri.parse(text.replaceAll('null', ' ------ '))}"; // new line
      }
    }

    if (Platform.isIOS) {
      // if (await canLaunch(url())) {
      await launch(url(), forceSafariVC: false);
      // } else {
      //   showError(customMessage: 'WhatsApp is not installed on your iOS device.');
      // }
    } else {
      // if (await canLaunch(url())) {
      await launch(url());
      // } else {
      //   // showError(customMessage: 'WhatsApp is not installed on your Android device.');
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        openWhatsapp(text: widget.message, number: widget.phone);
      },
      child: widget.child,
    );
  }
}
