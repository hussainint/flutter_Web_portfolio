import 'package:flutter/material.dart';
import 'package:portfolio/content/aboutMeContent.dart';
import 'package:portfolio/views/aboutMe/components/contactMeCard.dart';
import 'package:portfolio/views/aboutMe/components/individualDetails.dart';

import 'components/experienceList.dart';
import 'components/intro.dart';
import 'components/latestProject.dart';
import '../../global_components/header.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height - 80;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80.0), // here the desired height
        child: Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Intro(height: height),
            ExperienceList(width: width),
            IndividualDetails(),
            LatestProjects(),
            ContactMeCard(),
            Container(
              height: height * 0.4,
              color: Colors.grey[100],
            )
          ],
        ),
      ),
    );
  }
}
