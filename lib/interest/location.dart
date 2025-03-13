import 'package:dating_app/homePage/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String _status = "Permission not checked";

  Future<void> checkPermission() async {
    var status = await Permission.location.status; // FIXED
    setState(() {
      _status = status.isGranted
          ? "Location permission granted"
          : "Location permission denied";
    });
  }

  Future<void> requestPermission() async {
    var status = await Permission.location.request();
    setState(() {
      _status = status.isGranted
          ? "Location permission granted"
          : "Location permission denied";
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 237, 234),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset("assets/location.png"),
          ),
          SizedBox(
            height: 29.h,
          ),
          Text(
            "Enable your location",
            style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Text(
              textAlign: TextAlign.center,
              "Choose your location to start find people around you",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 51, 51, 51),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: GestureDetector(
              onTap: () {
                requestPermission();
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
                    "Allow Location Access",
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
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Text(
              "Enter Location Manually",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 255, 80, 105),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            child: Image.asset("assets/vector9.png"),
          ),
        ],
      ),
    );
  }
}
