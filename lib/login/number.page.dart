import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 237, 234),
      body: Column(
        children: [
          SizedBox(
            height: 35.h,
          ),
          Center(
            child: Image.asset(
              "assets/cupid.png",
              width: 115.w,
              height: 43.h,
            ),
          ),
          SizedBox(
            height: 45.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Text(
              textAlign: TextAlign.center,
              "Let’s start with your number",
              style: GoogleFonts.inter(
                fontSize: 24,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 34.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: IntlPhoneField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintText: "Enter Phone Number",
                hintStyle: GoogleFonts.inter(
                  fontSize: 15,
                  color: Color.fromARGB(255, 136, 136, 136),
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
              ),
              initialCountryCode: 'IN',
              flagsButtonPadding: EdgeInsets.only(left: 10.w),
              dropdownIcon: Icon(
                Icons.keyboard_arrow_down,
                color: Color.fromARGB(255, 142, 142, 142),
              ),
              onChanged: (phone) {
                print(phone.completeNumber);
              },
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
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    endIndent: 10,
                    indent: 40,
                    color: Color.fromARGB(255, 216, 216, 216),
                  ),
                ),
                Text(
                  "OR",
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: Divider(
                    endIndent: 40,
                    indent: 10,
                    thickness: 1,
                    color: Color.fromARGB(255, 216, 216, 216),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 325.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 8.w,
                ),
                Icon(
                  Icons.facebook,
                  color: Color.fromARGB(255, 24, 119, 242),
                  size: 40,
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  "Login with Facebook",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            width: 325.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  child: Image.asset("assets/google.png"),
                ),
                SizedBox(
                  width: 60.w,
                ),
                Text(
                  "Login with Google",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account? ",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              Text(
                "Sign Up",
                style: GoogleFonts.inter(
                  color: Color.fromARGB(255, 255, 80, 105),
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
