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
  int Index = 0;
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Index = 1;
                  });
                },
                child: ChoiceChip(
                  image: "assets/book.png",
                  imagecolor: Index == 1
                      ? Color.fromARGB(255, 255, 80, 105)
                      : Colors.white,
                  text: "Reading",
                  textcolor: Index == 1 ? Colors.black : Colors.white,
                  color: Index == 1
                      ? Colors.white
                      : Color.fromARGB(255, 255, 80, 105),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              ChoiceChip(
                image: "assets/photography.png",
                imagecolor: Index == 2
                    ? Colors.white
                    : Color.fromARGB(255, 255, 80, 105),
                text: "Photography",
                textcolor: Index == 2 ? Colors.white : Colors.black,
                color: Index == 2
                    ? Color.fromARGB(255, 255, 80, 105)
                    : Colors.white,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Index = 3;
                      });
                    },
                    child: ChoiceChip(
                      image: "assets/gaming.png",
                      imagecolor: Index == 3
                          ? Colors.white
                          : Color.fromARGB(255, 255, 80, 105),
                      text: "Gaming",
                      textcolor: Index == 3 ? Colors.white : Colors.black,
                      color: Index == 3
                          ? Color.fromARGB(255, 255, 80, 105)
                          : Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Index = 4;
                      });
                    },
                    child: ChoiceChip(
                      image: "assets/music.png",
                      imagecolor: Index == 4
                          ? Colors.white
                          : Color.fromARGB(255, 255, 80, 105),
                      text: "Music",
                      textcolor: Index == 4 ? Colors.white : Colors.black,
                      color: Index == 4
                          ? Color.fromARGB(255, 255, 80, 105)
                          : Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Index = 5;
                      });
                    },
                    child: ChoiceChip(
                      image: "assets/travale.png",
                      imagecolor: Index == 5
                          ? Colors.white
                          : Color.fromARGB(255, 255, 80, 105),
                      text: "Travel",
                      textcolor: Index == 5 ? Colors.white : Colors.black,
                      color: Index == 5
                          ? Color.fromARGB(255, 255, 80, 105)
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 6;
                    });
                  },
                  child: ChoiceChip(
                    image: "assets/painting.png",
                    imagecolor: Index == 6
                        ? Colors.white
                        : Color.fromARGB(255, 255, 80, 105),
                    text: "Painting",
                    textcolor: Index == 6 ? Colors.white : Colors.black,
                    color: Index == 6
                        ? Color.fromARGB(255, 255, 80, 105)
                        : Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 7;
                    });
                  },
                  child: ChoiceChip(
                    image: "assets/politic.png",
                    imagecolor: Index == 7
                        ? Colors.white
                        : Color.fromARGB(255, 255, 80, 105),
                    text: "Politics",
                    textcolor: Index == 7 ? Colors.white : Colors.black,
                    color: Index == 7
                        ? Color.fromARGB(255, 255, 80, 105)
                        : Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 8;
                    });
                  },
                  child: ChoiceChip(
                    image: "assets/charity.png",
                    imagecolor: Index == 8
                        ? Colors.white
                        : Color.fromARGB(255, 255, 80, 105),
                    text: "Charity",
                    textcolor: Index == 8 ? Colors.white : Colors.black,
                    color: Index == 8
                        ? Color.fromARGB(255, 255, 80, 105)
                        : Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Index = 9;
                    });
                  },
                  child: ChoiceChip(
                    image: "assets/cooking.png",
                    imagecolor: Index == 9
                        ? Colors.white
                        : Color.fromARGB(255, 255, 80, 105),
                    text: "Cooking",
                    textcolor: Index == 9 ? Colors.white : Colors.black,
                    color: Index == 9
                        ? Color.fromARGB(255, 255, 80, 105)
                        : Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChoiceChip(
                  image: "assets/pets.png",
                  imagecolor: Color.fromARGB(255, 255, 80, 105),
                  text: "Pets",
                  textcolor: Colors.black,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceChip(
                  image: "assets/sports.png",
                  imagecolor: Colors.white,
                  text: "Sports",
                  textcolor: Colors.white,
                  color: Color.fromARGB(255, 255, 80, 105),
                ),
                SizedBox(
                  width: 10.w,
                ),
                ChoiceChip(
                  image: "assets/fashion.png",
                  imagecolor: Color.fromARGB(255, 255, 80, 105),
                  text: "Fashion",
                  textcolor: Colors.black,
                  color: Colors.white,
                ),
              ],
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
