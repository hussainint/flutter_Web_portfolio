import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../../widgets/individualExperience.dart';

class ExperienceList extends StatelessWidget {
  const ExperienceList({
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Center(
          child: Container(
            margin: EdgeInsets.all(50),
            width: width * 0.85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IndividualExperience(
                  index: 1,
                ),
                SizedBox(width: 30),
                IndividualExperience(
                  index: 2,
                ),
                SizedBox(width: 30),
                IndividualExperience(
                  index: 3,
                ),
              ],
            ),
          ),
        ),
        desktop: Center(
          child: Container(
            margin: EdgeInsets.all(50),
            width: width * 0.85,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: IndividualExperience(
                    index: 1,
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: IndividualExperience(
                    index: 2,
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: IndividualExperience(
                    index: 3,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
