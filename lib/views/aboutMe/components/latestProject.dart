import 'package:flutter/material.dart';
import 'package:portfolio/content/aboutMeContent.dart';
import 'package:portfolio/responsive.dart';

class LatestProjects extends StatelessWidget {
  const LatestProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xff007efd),
          Color(0xff1ad6c7),
        ],
      )),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isDesktop(context) ? 120 : 60,
          vertical: Responsive.isDesktop(context) ? 60 : 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Projects',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            'Mobile Apps made with Flutter',
            style: TextStyle(
                fontSize: 45, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          Responsive(
              mobile: Column(
                children: [
                  Column(
                    children: [
                      ProjectCard(
                        title: AboutMeContent.latestProjects[0][0],
                        subtitle: AboutMeContent.latestProjects[0][1],
                      ),
                      ProjectCard(
                        title: AboutMeContent.latestProjects[1][0],
                        subtitle: AboutMeContent.latestProjects[1][1],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ProjectCard(
                        title: AboutMeContent.latestProjects[2][0],
                        subtitle: AboutMeContent.latestProjects[2][1],
                      ),
                      ProjectCard(
                        title: AboutMeContent.latestProjects[3][0],
                        subtitle: AboutMeContent.latestProjects[3][1],
                      ),
                    ],
                  )
                ],
              ),
              desktop: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[0][0],
                            subtitle: AboutMeContent.latestProjects[0][1],
                          )),
                      Expanded(
                          flex: 6,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[1][0],
                            subtitle: AboutMeContent.latestProjects[1][1],
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 4,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[2][0],
                            subtitle: AboutMeContent.latestProjects[2][1],
                          )),
                      Expanded(
                          flex: 6,
                          child: ProjectCard(
                            title: AboutMeContent.latestProjects[3][0],
                            subtitle: AboutMeContent.latestProjects[3][1],
                          )),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  String title;
  String subtitle;
  ProjectCard({
    required this.title,
    required this.subtitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 50, top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration:
                BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
          ),
          SizedBox(height: 30),
          Text(
            '$title ',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 30),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
