import 'package:dating_app/login/number.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 237, 234),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 237, 234),
        automaticallyImplyLeading: false,
        title: Container(
          child: Center(
            child: Image.asset(
              "assets/cupid.png",
              width: 115.w,
              height: 43.h,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 380.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 30.h,
                    child: Image.asset("assets/vector.png"),
                  ),
                  Positioned(
                    left: 15.w,
                    top: -10.h,
                    child: Image.asset(
                      "assets/image1.png",
                      width: 180,
                      height: 180,
                    ),
                  ),
                  Positioned(
                    top: 65.h,
                    left: 200.w,
                    child: Image.asset(
                      "assets/image2.png",
                      width: 160.w,
                      height: 160.h,
                    ),
                  ),
                  Positioned(
                    top: 170.h,
                    left: 20.w,
                    child: Image.asset(
                      "assets/image3.png",
                      width: 150.w,
                      height: 150.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Discover Love where your story begins.",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Text(
                textAlign: TextAlign.center,
                "Join us to discover your ideal partner and ignite the sparks of romance in your journey.",
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 51, 51, 51),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NumberPage(),
                      ));
                },
                child: Container(
                  width: 325.w,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 80, 105),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.phone,
                            color: Color.fromARGB(255, 255, 80, 105),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Text(
                        "Login with Phone",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Text(
                  " Sign Up",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromARGB(255, 255, 80, 105),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
