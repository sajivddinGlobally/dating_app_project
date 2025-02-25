import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Center(
            child: Text(
              "Verification Code",
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
            "Please enter code we just send to",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            "+91 99292 77633",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Myotp(
                text: "5",
              ),
              Myotp(
                text: "1",
              ),
              Myotp(
                text: "-",
              ),
              Myotp(
                text: "-",
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25.h,
              ),
              Text(
                "Didn’t receive OTP?",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
              Text(
                "Resend Code",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 255, 80, 105),
                ),
              ),
            ],
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
                  "Verify",
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
            height: 80.h,
          ),
          Container(
            child: Image.asset("assets/vector1.png"),
          ),
        ],
      ),
    );
  }
}

class Myotp extends StatefulWidget {
  final String text;
  const Myotp({super.key, required this.text});

  @override
  State<Myotp> createState() => _MyotpState();
}

class _MyotpState extends State<Myotp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56.w,
          height: 56.h,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.text,
                hintStyle: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
