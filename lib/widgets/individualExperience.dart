import 'package:flutter/material.dart';
import 'package:portfolio/content/aboutMeContent.dart';

class IndividualExperience extends StatelessWidget {
  int index;
  IndividualExperience({
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cons) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Divider(
            thickness: 4,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20),
          Text(
            AboutMeContent.individualExperience[index - 1][0],
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, letterSpacing: 1.2),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
              top: 30,
            ),
            child: Text(
              AboutMeContent.individualExperience[index - 1][1],
              style: TextStyle(
                fontSize: 20,
                height: 1.5,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                right: 30, top: index % 2 == 0 ? 30 : 50, bottom: 60),
            // child: Image.asset(
            //   'assets/myPic1.png',
            //   fit: BoxFit.cover,
            // ),

            child: Placeholder(),
            width: cons.maxWidth * 0.75,
            height: cons.maxWidth * 0.75,
          )
        ],
      );
    });
  }
}
