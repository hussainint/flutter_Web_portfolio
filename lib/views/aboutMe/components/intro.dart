import 'package:flutter/material.dart';
import 'package:portfolio/content/aboutMeContent.dart';

import '../../../responsive.dart';

class Intro extends StatelessWidget {
  const Intro({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Color(0xffe7e7fd),
          Color(0xfff2fbfe),
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Responsive(
            mobile: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              height: height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.8 * 0.5,
                    width: height * 0.8 * 0.5,
                    // child: Image.asset('assets/myPic1.png'),
                    child: Placeholder(),
                  ),
                  SizedBox(height: 30),
                  Text(
                    AboutMeContent.introTitle,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            desktop: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              height: height * 0.8,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        AboutMeContent.introTitle,
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 70),
                  Container(
                    height: height * 0.8 * 0.7,
                    width: height * 0.8 * 0.7,
                    // child: Image.asset(
                    //   'assets/myPic1.png',
                    //   fit: BoxFit.contain,
                    // ),
                    child: Placeholder(),
                  )
                ],
              ),
            ),
          ),
          Responsive(
            mobile: Container(
              margin: EdgeInsets.all(30),
              child: Text(
                AboutMeContent.introDescription.replaceAll('\n', ''),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            desktop: Container(
              margin: EdgeInsets.all(30),
              child: Text(
                AboutMeContent.introDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
