import 'dart:ui';

class AccountTypeModel {
  final String image;
  final String label;
  final VoidCallback? onTap;
  final bool isSelected;

  AccountTypeModel({
    required this.image,
    required this.label,
    this.onTap,
    this.isSelected = false,
  });

  AccountTypeModel copyWith({
    String? image,
    String? label,
    VoidCallback? onTap,
    bool? isSelected,
  }) {
    return AccountTypeModel(
      image: image ?? this.image,
      label: label ?? this.label,
      onTap: onTap ?? this.onTap,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}