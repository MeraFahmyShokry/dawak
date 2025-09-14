import 'dart:ui';

class AccountTypeModel {
  String image;
  String label;
  VoidCallback ?OnTap;

  AccountTypeModel({required this.image, required this.label,   this.OnTap});
}
