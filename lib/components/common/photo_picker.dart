import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import '../common/text.dart';
import '../../utilities/theme.dart';

class PhotoPicker extends StatefulWidget {
  final From from;
  final Function? setter;
  final String photoURL;
  const PhotoPicker({
    super.key,
    this.setter,
    required this.from,
    this.photoURL = "",
  });

  @override
  State<PhotoPicker> createState() => _PhotoPickerState();
}

class _PhotoPickerState extends State<PhotoPicker> {
  File? photo;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: DottedBorder(
            color: gradientColor2,
            padding: const EdgeInsets.all(4),
            strokeCap: StrokeCap.round,
            strokeWidth: 2,
            dashPattern: const [10, 4, 6, 4],
            borderType: BorderType.RRect,
            radius: const Radius.circular(8),
            child: GestureDetector(
              onTap: () async {
                if (widget.setter != null) {
                  FilePickerResult? file = await FilePicker.platform.pickFiles(
                      allowedExtensions: ['png', 'jpg'],
                      type: FileType.custom,
                      allowMultiple: false);
                  if (file == null) {
                    return;
                  } else {
                    setState(() {
                      photo = File(file.files.first.path!);
                      String photoName = file.files.first.name;
                      widget.setter!(photo, photoName);
                    });
                  }
                }
              },
              child: Container(
                width: height * 0.1,
                height: height * 0.1,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: photo == null
                      ? widget.from == From.detail
                          ? Image.network(
                              widget.photoURL,
                              fit: BoxFit.cover,
                            )
                          : Center(
                              child: CustomText(
                                text: "PHOTO",
                                color: gradientColor2.withOpacity(.8),
                                weight: FontWeight.w600,
                              ),
                            )
                      : Image.file(
                          photo!,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        widget.from == From.add
            ? Align(
                alignment: Alignment.center,
                child: CustomText(
                  text: "Tap to add profile photo",
                  size: 26,
                  color: textColor.withOpacity(.5),
                  weight: FontWeight.w600,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
