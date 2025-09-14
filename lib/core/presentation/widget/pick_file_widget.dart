import 'dart:io';

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:clean_arc/core/presentation/widget/custom_dropdown_field.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PickFileWidget extends StatefulWidget {
  Widget child;

  final void Function(List<File>? path) onSelectFile;

  PickFileWidget({
    super.key,
    required this.child,
    required this.onSelectFile,
  });

  @override
  State<PickFileWidget> createState() => _PickFileWidgetState();
}

class _PickFileWidgetState extends State<PickFileWidget> {
  List<XFile> imagePathXFile = [];

  List<PlatformFile> imagePathTransaction = [];

  confirmImage(List<PlatformFile> files,
      {required List<XFile> imagePathTransactionXFile}) {
    imagePathTransaction = files;
    imagePathXFile = imagePathTransactionXFile;

    if (imagePathTransaction.isNotEmpty) {
      widget.onSelectFile(imagePathTransaction
          .map((e) => File(
                e.path ?? '',
              ))
          .toList());
    }
    if (imagePathXFile.isNotEmpty) {
      widget.onSelectFile(imagePathXFile
          .map((e) => File(
                e.path ?? '',
              ))
          .toList());
    }
    setState(() {});
  }

  clearImage() {
    imagePathTransaction.clear();
    imagePathXFile.clear();
  }

  Future<FilePickerResult?> pickIdImg(
      {required FileType type, bool allowMultiple = false}) async {
    if (Platform.isIOS) {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: type,
          allowMultiple: allowMultiple,
          allowedExtensions: type != FileType.custom
              ? null
              : [
                  'jpg',
                  'png',
                  'jpeg',
                  'gif',
                  "tif",
                  'tiff',
                  'rar',
                  'doc',
                  "docx",
                  "pdf"
                ]);
      setState(() {});
      return result;
    } else {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.custom,
          allowMultiple: allowMultiple,
          allowedExtensions: type != FileType.custom
              ? type == FileType.image
                  ? [
                      'jpg',
                      'png',
                      'jpeg',
                      'gif',
                    ]
                  : null
              : [
                  'jpg',
                  'png',
                  'jpeg',
                  'gif',
                  "tif",
                  'tiff',
                  'rar',
                  'doc',
                  "docx",
                  "pdf"
                ]);
      setState(() {});
      return result;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        clearImage();
        await checkAndRequestCameraPermissions().then((value) async {
          if (value == true) {
            showAdaptiveActionSheet(
              context: context,
              androidBorderRadius: 15,
              actions: <BottomSheetAction>[
                BottomSheetAction(
                    title: Row(children: [
                      Icon(Icons.camera,
                          size: 22, color: Theme.of(context).primaryColor),
                      const SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      // osAddHorizontalSpace(),
                      TextApp(
                        (context.translate.camera),
                        style: context.textStyle.copyWith(
                          // color: context.color.trx,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        // fontSize: 16,
                        // color:
                        // AppColors.black,
                      )
                    ]),
                    onPressed: (context) async {
                      final ImagePicker picker = ImagePicker();
                      Navigator.pop(context);
                      await picker.pickImage(source: ImageSource.camera).then(
                          (value) => confirmImage([],
                              imagePathTransactionXFile:
                                  value == null ? [] : [value]));

                      setState(() {});
                    }),
                BottomSheetAction(
                    title: Row(children: [
                      Icon(Icons.image_outlined,
                          size: 22, color: Theme.of(context).primaryColor),
                      const SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      TextApp(
                        context.translate.gallery,
                        style: context.textStyle.copyWith(
                          // color: context.color.colorBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        // fontSize: 16,
                        // color:
                        // AppColors.black,
                      )
                    ]),
                    onPressed: (context) async {
                      Navigator.pop(context);

                      pickIdImg(type: FileType.image).then((value) {
                        //
                        confirmImage(value?.files ?? [],
                            imagePathTransactionXFile: []);

                        setState(() {});
                      });
                    }),
                BottomSheetAction(
                    title: Row(children: [
                      Icon(CupertinoIcons.doc,
                          size: 22, color: Theme.of(context).primaryColor),
                      const SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      TextApp(
                        context.translate.document,
                        style: context.textStyle.copyWith(
                          fontSize: AppDimensions.fontSizeDefault,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                      ,
                      // CustomDropdownField<double>(
                      //   asyncItems: (p0) =>,
                      //   items: [
                      //
                      //   ],
                      //   title:'' ,
                      //   itemBuilder: (context, item, isSelected) => Text(item.toString()),
                      //   filedBuilder: (context, item) => TextApp('text'),
                      //   validator: (p0) {
                      //
                      //   },
                      //   // showTitle: ,
                      //   onChanged: (value) {
                      //
                      //   },
                      // )
                    ]),
                    onPressed: (context) {
                      Navigator.pop(context);
                      pickIdImg(type: FileType.custom).then((value) {
                        //
                        confirmImage(value?.files ?? [],
                            imagePathTransactionXFile: []);

                        setState(() {});
                      });
                    }),
              ],
              cancelAction: CancelAction(
                  title: TextApp(
                context.translate.cancel,
                style: context.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
            );
          } else {
            // ServiceLocator.instance<Snackbars>().error(
            //   context: context,
            //   message: context.translate
            //       .please_allow_Camera_permission, //"يجب اختيار اسم الطفل",
            // );

            await Future.delayed(Duration(seconds: 1));
            await openAppSettings();
          }
        });
      },
      child: widget.child,
    );
  }
}

class CustomPickFileWidget extends StatefulWidget {
  final Function(List<File>?) onSelectFile;
  final String? title;

  const CustomPickFileWidget({
    Key? key,
    this.title,
    required this.onSelectFile,
  }) : super(key: key);

  @override
  _CustomPickFileWidgetState createState() => _CustomPickFileWidgetState();
}

class _CustomPickFileWidgetState extends State<CustomPickFileWidget> {
  List<File>? _attachedFiles;

  void _pickFiles() async {
    // هنا ضع منطق اختيار الملفات
    // ثم قم بتحديث الحالة عند اختيار الملفات
    setState(() {});
    widget.onSelectFile(_attachedFiles);
  }

  @override
  Widget build(BuildContext context) {
    return PickFileWidget(
      child: Stack(
        children: [
          _attachedFiles?.isNotEmpty ?? false
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: (_attachedFiles ?? [])
                              .map(
                                (File e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    basename(e.path),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            IconlyLight.edit,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.title ?? context.translate.issuesImage),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.grey.withOpacity(.2),
                          child: Icon(
                            IconlyLight.upload,
                            color: context.color.primaryColor,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
      onSelectFile: (path) {
        setState(() {});
        print("sadsad ${path}");
        _attachedFiles = path;
        widget.onSelectFile(path);
      },
    );
  }
}

Future<bool> checkAndRequestCameraPermissions() async {
  await [Permission.camera].request();
  PermissionStatus permission = await Permission.camera.status;
  if (permission != PermissionStatus.granted) {
    Map<Permission, PermissionStatus> permissions =
        await [Permission.camera].request();
    return permissions[Permission.camera] == PermissionStatus.granted;
  } else {
    return true;
  }
}
