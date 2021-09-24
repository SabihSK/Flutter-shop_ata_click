import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_ata_click/components/onboarding_content.dart';
import 'package:shop_ata_click/screens/sign_in.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';



class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  List<Map<String, String>> onBoardingData = [
    {

      'title': 'Discover your favourtite outlets here!',
      'image': 'assets/images/onboarding1.png',
    },
    {

      'title': 'Get good quality products at pocket friendly rates',
      'image': 'assets/images/onboarding2.png',
    },
    {

      'title': 'Get you favorite products at your doorstep',
      'image': 'assets/images/onboarding3.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.w, // navigation bar color
        statusBarColor: primaryColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light
      // status bar color
    ));
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
        // bottomSheet: Container(
        //   height: 35,
        //  color: Colors.transparent,
        //  // color: Colors.red,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       FlatButton(onPressed:(){
        //         Navigator.pushNamed(context, 'SignInOptions');
        //       },child: Text('Skip',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
        //       FlatButton(onPressed:(){
        //         Navigator.pushNamed(context, 'SignInOptions');
        //       },child: Text('Next',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
        //     ],
        //   ),
        // ),
        body: Stack(
          children: [
            NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowGlow();
              },
              child: PageView.builder(
              //  physics: BouncingScrollPhysics(),
                  onPageChanged: (val) {
                    setState(() {
                      currentPage = val;
                    });
                  },
                  itemCount: onBoardingData.length,
                  itemBuilder: (context, index) {
                    return OnBoardingContent(
                      title: onBoardingData[index]['title'],
                      image: onBoardingData[index]['image'],

                    );
                  }),
            ),
            Column(children: [
             Spacer(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      onBoardingData.length, (index) => buildDot(index))),
              SizedBox(
                height: 50,
              ),
              Align(alignment: Alignment.bottomRight,child: Padding(
                padding: const EdgeInsets.only(right:18.0),
                child: GestureDetector(onTap: (){
                  Navigator.pushNamed(context, 'SignIn');
                },child: Text('Skip',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
              )),
              SizedBox(height: 20,)
            ])
          ],
        ),
      ),
    );
  }

  buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      height: currentPage == index ? 10 : 6,
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 10 : 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentPage == index ? primaryColor : Colors.grey[300],
      ),
    );
  }
}
