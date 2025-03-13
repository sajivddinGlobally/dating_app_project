import 'package:dating_app/homePage/hearpage.dart';
import 'package:dating_app/homePage/messagepage.dart';
import 'package:dating_app/homePage/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List myList = [
    {
      "imageUrl": "assets/story.png",
      "text": "Add Story",
    },
    {
      "imageUrl": "assets/jassica.png",
      "text": "Jassica",
    },
    {
      "imageUrl": "assets/michel.png",
      "text": "Michel",
    },
    {
      "imageUrl": "assets/michel.png",
      "text": "Michel",
    }
  ];
  List swiperProfile = [
    {
      "imageUrl": "assets/swiper.png",
      "location": "Malibu - 20 KMS AWAY",
      "name": "Kalvin, 23",
    },
    {
      "imageUrl": "assets/jassica.png",
      "location": "Malibu - 20 KMS AWAY",
      "name": "sajivddin, 23",
    },
    {
      "imageUrl": "assets/michel.png",
      "location": "Malibu - 20 KMS AWAY",
      "name": "Aasif, 23",
    },
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 237, 234),
      key: _scaffoldKey,
      drawer: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: 280,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 280,
                // width: 289.w,
                decoration: BoxDecoration(
                  color: Color(0xFF9088F1),
                  // borderRadius: BorderRadius.only(

                  // ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, top: 20),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            // child: Text(
                            //   "${box.get('name')}",
                            //   style: GoogleFonts.roboto(
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.w600,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            // child: Text(
                            //   "${box.get('email')}",
                            //   style: GoogleFonts.roboto(
                            //     fontSize: 12,
                            //     fontWeight: FontWeight.w400,
                            //     color: Colors.white,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20.w,
              ),
              GestureDetector(
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 219, 224),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.dashboard,
                    color: Color.fromARGB(255, 255, 80, 105),
                    size: 18.w,
                  ),
                ),
              ),
              Spacer(),
              Container(
                child: Image.asset(
                  "assets/cupid.png",
                  width: 115.w,
                  height: 43,
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 219, 224),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.filter_alt,
                  color: Color.fromARGB(255, 255, 80, 105),
                  size: 20.w,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          currentIndex == 0
              ? Column(
                  children: [
                    SizedBox(
                      height: 140.h,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: myList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20.w),
                                child: Image.asset(
                                  myList[index]["imageUrl"]!,
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Text(
                                myList[index]["text"]!,
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        height: 390.h,
                        width: 335.w,
                        child: Center(
                          child: CardSwiper(
                            numberOfCardsDisplayed:
                                3, // Ek time par kitne cards show karne hain
                            initialIndex: 0, // Pehla card ka index
                            backCardOffset: Offset(
                                0, 25), // Back card ki position adjust karein
                            onSwipe: (previousIndex, currentIndex, direction) {
                              print(
                                  "Swiped from $previousIndex to $currentIndex");
                              return true;
                            },
                            // backCardOffset: Offset(1, 1),
                            // initialIndex: swiperProfile.length,
                            padding: EdgeInsets.all(10),
                            cardBuilder: (context,
                                index,
                                horizontalOffsetPercentage,
                                verticalOffsetPercentage) {
                              return Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.r),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20.r),
                                      child: Image.asset(
                                        // "assets/swiper.png",
                                        swiperProfile[index]["imageUrl"],
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10.h,
                                      left: 20.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            // "Kalvin, 23",
                                            swiperProfile[index]["name"],
                                            style: GoogleFonts.inter(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            // "Malibu • 20 kms away",
                                            swiperProfile[index]["location"],
                                            style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            cardsCount: swiperProfile.length,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.close,
                            color: Color.fromARGB(255, 255, 80, 105),
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 80.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 80, 105),
                          ),
                          child: Icon(
                            Icons.heart_broken,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Container(
                          width: 60.w,
                          height: 60.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 255, 180, 49),
                          ),
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              : currentIndex == 1
                  ? Hearpage()
                  : currentIndex == 2
                      ? Messagepage()
                      : Profilepage(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 255, 80, 105),
        unselectedItemColor: Color.fromARGB(255, 173, 175, 187),
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.phone_iphone_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.heart_broken),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
