import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Uploadphoto extends StatefulWidget {
  const Uploadphoto({super.key});

  @override
  State<Uploadphoto> createState() => _UploadphotoState();
}

class _UploadphotoState extends State<Uploadphoto> {
  File? image;
  final picker = ImagePicker();
  Future getImageFromGallery() async {
    final PickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (PickedFile != null) {
        image = File(PickedFile.path);
      }
    });
  }

  Future getImageFromCamera() async {
    final PickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (PickedFile != null) {
        image = File(PickedFile.path);
      }
    });
  }

  Future showOptions() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              getImageFromGallery();
            },
            child: Text("Gallery"),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              getImageFromCamera();
            },
            child: Text("Camera"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 237, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 237, 234),
        title: Container(
          child: Stack(
            children: [
              Container(
                width: 180.w,
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 243, 189, 208),
                ),
              ),
              Container(
                width: 180.w,
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  color: Color.fromARGB(255, 255, 80, 105),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Text(
              "Upload your photo",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Text(
            textAlign: TextAlign.center,
            "We'd love to see you. Upload a photo for your dating journey.",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromARGB(255, 51, 51, 51),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: DottedBorder(
                  color: Colors.black,
                  dashPattern: [6, 6],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(16),
                  child: Container(
                    width: 216.w,
                    height: 216.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showOptions();
                      },
                      child: Center(
                        child: image == null
                            ? Text("Upload Image")
                            : Image.file(image!),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
