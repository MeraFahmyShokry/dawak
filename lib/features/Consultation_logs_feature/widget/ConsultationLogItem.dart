import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:flutter/material.dart';

class ConsultationLogItem extends StatelessWidget {
  final String doctorName;
  final String status;
  final String day;
  final String imageUrl;

  const ConsultationLogItem({
    super.key,
    required this.doctorName,
    required this.status,
    required this.day,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final iconKey = GlobalKey();

    return ListTile(
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: context.color.borderColor!),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: TextApp(
        doctorName,
        style: TextStyle(fontWeight: FontWeightHelper.bold),
      ),
      subtitle: TextApp('$status  •  $day'),
      trailing: GestureDetector(
        key: iconKey,
        onTap: () {
          final RenderBox renderBox =
              iconKey.currentContext!.findRenderObject() as RenderBox;
          final Offset offset = renderBox.localToGlobal(Offset.zero);

          ConsultationPopupMenu.show(
            context: context,
            position: offset,
            onSelected: (value) {
              if (value == 'delete') {
              } else if (value == 'call_again') {}
            },
          );
        },
        child: const Icon(Icons.more_vert),
      ),
    );
  }
}

class ConsultationPopupMenu {
  static void show({
    required BuildContext context,
    required Offset position,
    required void Function(String value) onSelected,
  }) {
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx - 100,
        position.dy + 30,
        position.dx,
        position.dy,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
          value: 'delete',
          child: SizedBox(
            width: 150,
            child: TextApp(
              context.translate.delete,
              style: TextStyle(color: context.color.textColor),
            ),
          ),
        ),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
          value: 'call_again',
          child: SizedBox(
            width: 120,
            child: TextApp(
              context.translate.callagain,
              style: TextStyle(color: context.color.textColor),
            ),
          ),
        ),
      ],
    ).then((value) {
      if (value != null) {
        onSelected(value);
      }
    });
  }
}
