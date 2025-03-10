import 'package:dating_app/interest/uploadPhoto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({super.key});

  @override
  State<InterestPage> createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  Set<String> selectedOptions = {};
  List<String> interested = [
    "Reading",
    "Photography",
    "Gaming",
    "Music",
    "Travel",
    "Painting",
    "Politics",
    "Charity",
    "Cooking",
    "Pets",
    "Sports",
    "Fashion"
  ];

  Set<String> selectinterested = {}; // Store selected items

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
                width: 150.w,
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
            height: 40.h,
          ),
          Center(
            child: Text(
              "Select up to 3 interest",
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
            "Tell us what piques your curiosity and passions",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color.fromARGB(255, 51, 51, 51),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: interested.map(
                (filter) {
                  final isSelected = selectinterested.contains(filter);
                  return FilterChip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r),
                      side: BorderSide.none,
                    ),
                    label: Text(
                      filter,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    avatar: Image.asset(
                      "assets/book.png",
                      color: isSelected
                          ? Colors.white
                          : Color.fromARGB(255, 255, 80, 105),
                    ),
                    showCheckmark: false,
                    disabledColor: Colors.white,
                    selectedColor: Color.fromARGB(255, 255, 80, 105),
                    selected: selectinterested.contains(filter),
                    onSelected: (isSelected) {
                      setState(() {
                        if (isSelected) {
                          selectinterested.add(filter);
                        } else {
                          setState(() {
                            selectinterested.remove(filter);
                          });
                        }
                      });
                    },
                  );
                },
              ).toList(),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Image.asset("assets/vector7.png"),
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
                      builder: (context) => Uploadphoto(),
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
    );
  }
}

class ChoiceChip extends StatefulWidget {
  final String text;
  final Color textcolor;
  final String image;
  final Color color;
  final Color imagecolor;
  const ChoiceChip(
      {super.key,
      required this.text,
      required this.image,
      required this.color,
      required this.imagecolor,
      required this.textcolor});

  @override
  State<ChoiceChip> createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: 112.w,
          height: 40.h,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    widget.image,
                    color: widget.imagecolor,
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  widget.text,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: widget.textcolor,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
