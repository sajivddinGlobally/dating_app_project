import 'package:dating_app/verification.otp/otp.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class MyNumber extends StatefulWidget {
  const MyNumber({super.key});

  @override
  State<MyNumber> createState() => _MyNumberState();
}

class _MyNumberState extends State<MyNumber> {
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
                width: 20.w,
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
                "My Number Is",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                textAlign: TextAlign.center,
                "We'll need your phone number to send an OTP for verification.",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
            ),
            SizedBox(
              height: 28.h,
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpScreen(),
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
            SizedBox(
              height: 60,
            ),
            Container(
              child: Image.asset("assets/vector.png"),
            ),
          ],
        ),
      ),
    );
  }
}
