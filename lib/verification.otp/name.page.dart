import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
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
                width: 30.w,
                height: 8.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  color: Color.fromARGB(255, 255, 80, 105),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Center(
            child: Text(
              "What’s Your Name?",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Let's Get to Know Each Other",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromARGB(255, 51, 51, 51),
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Name",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 255, 80, 105),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 255, 80, 105),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Container(
              width: 325.w,
              height: 56.h,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 80, 105),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  "Continue",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 90.h,
          ),
          Container(
            child: Image.asset("assets/vector2.png"),
          ),
        ],
      ),
    );
  }
}
