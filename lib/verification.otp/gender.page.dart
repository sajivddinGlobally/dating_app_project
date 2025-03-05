import 'package:dating_app/verification.otp/looking.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  int currentIndex = 0;
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
                width: 80.w,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: Text(
                "What’s Your Gender?",
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
              "Tell us about your gender",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromARGB(255, 51, 51, 51),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
              child: MyGender(
                color: currentIndex == 1
                    ? Color.fromARGB(255, 255, 80, 105)
                    : Color.fromARGB(255, 240, 228, 230),
                iconData: Icons.male,
                iconcolor: currentIndex == 1 ? Colors.white : Colors.black,
                name: "Male",
                textcolor: currentIndex == 1 ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
              child: MyGender(
                iconData: Icons.female,
                iconcolor: currentIndex == 2 ? Colors.white : Colors.black,
                color: currentIndex == 2
                    ? Color.fromARGB(255, 255, 80, 105)
                    : Color.fromARGB(255, 240, 228, 230),
                name: "Female",
                textcolor: currentIndex == 2 ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              child: Image.asset("assets/vector5.png"),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LookingPage(),
                      ));
                },
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
            ),
          ],
        ),
      ),
    );
  }
}

class MyGender extends StatefulWidget {
  final IconData iconData;
  final Color color;
  final String name;
  final Color iconcolor;
  final Color textcolor;
  const MyGender(
      {super.key,
      required this.iconData,
      required this.color,
      required this.name,
      required this.iconcolor,
      required this.textcolor});

  @override
  State<MyGender> createState() => _MyGenderState();
}

class _MyGenderState extends State<MyGender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.iconData,
            color: widget.iconcolor,
            size: 40,
          ),
          Text(
            widget.name,
            style: GoogleFonts.inter(
              fontSize: 18,
              color: widget.textcolor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
