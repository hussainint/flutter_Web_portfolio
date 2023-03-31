import 'package:flutter/material.dart';

import '../../../responsive.dart';

class ContactMeCard extends StatelessWidget {
  const ContactMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(Responsive.isDesktop(context) ? 150 : 50),
      padding: EdgeInsets.all(Responsive.isDesktop(context) ? 50 : 20),
      decoration: BoxDecoration(
        color: Color(0xff042448),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FittedBox(
            child: Text(
              'Tech Stack ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 30),
          Text(
            'Some random text some random text ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 50),
          Wrap(
            runSpacing: 30,
            spacing: 40,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
              Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
              Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
              Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
              Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
              Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
              Container(
                height: 70,
                width: 70,
                decoration:
                    BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
              ),
            ],
          )
        ],
      ),
    );
  }
}
