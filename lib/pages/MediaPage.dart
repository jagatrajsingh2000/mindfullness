// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MenuBar(),
            CardSession(),
            Padding(
              padding:
                  EdgeInsets.only(left: 32, right: 22, top: 28, bottom: 28),
              child: RichText(
                  text: TextSpan(
                      text: "All Sessions  ",
                      style: TextStyle(
                        color: Color.fromRGBO(55, 27, 52, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                    WidgetSpan(
                        child: Image.asset(
                      'assets/images/downarrow.png',
                      width: 16,
                      height: 16,
                    )),
                  ])),
            ),
            SessionCard(
              imagePath: 'assets/images/profileImage.png',
              name: "Sahana V",
              specialization: "Msc in Clinical Psychology",
              date: "31st March '22",
              time: "7:30 PM - 8:30 PM",
              buttonText: 'Join Now',
              containerColor: Color.fromRGBO(254, 243, 231, 1),
              buttonTextElevated: "Reschedule",
            ),
            SessionCard(
              imagePath: 'assets/images/profileImage.png',
              name: "Sahana V",
              specialization: "Msc in Clinical Psychology",
              date: "31st March '22",
              time: "7:30 PM - 8:30 PM",
              buttonText: 'View Profile',
              containerColor: Color.fromRGBO(244, 244, 244, 1),
              buttonTextElevated: "Re-book",
            ),
            SessionCard(
              imagePath: 'assets/images/profileImage.png',
              name: "Sahana V",
              specialization: "Msc in Clinical Psychology",
              date: "31st March '22",
              time: "7:30 PM - 8:30 PM",
              buttonText: 'View Profile',
              containerColor: Color.fromRGBO(244, 244, 244, 1),
              buttonTextElevated: "Re-book",
            )
          ],
        )),
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  const SessionCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.specialization,
    required this.date,
    required this.time,
    required this.buttonText,
    required this.buttonTextElevated,
    required this.containerColor,
  });
  final String imagePath;
  final String name;
  final String specialization;
  final String date;
  final String time;
  final String buttonText;
  final Color containerColor;
  final String buttonTextElevated;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32, bottom: 12),
      child: Container(
        padding: EdgeInsets.only(left: 15, top: 21),
        width: 325,
        height: 171,
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.5),
                        color: Color.fromRGBO(240, 158, 84, 0.47),
                      ),
                    ),
                    Image.asset(
                      imagePath,
                      width: 35,
                      height: 35,
                    )
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Color.fromRGBO(87, 57, 38, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      specialization,
                      style: TextStyle(
                        color: Color.fromRGBO(87, 57, 38, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/ioutlinedaterange.png',
                  height: 17,
                  width: 17,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/images/witime.png',
                  height: 17,
                  width: 17,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 117,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(254, 130, 53, 1),
                      borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: Text(
                      buttonTextElevated,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 17,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      buttonText,
                      style: TextStyle(color: Color.fromRGBO(254, 130, 53, 1)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22, top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/profile.png',
                width: 35,
                height: 35,
              )),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/images/bell.png',
                    width: 34, height: 24),
              ),
              Positioned(
                left: 26,
                top: 6,
                child: Container(
                  width: 21,
                  height: 21,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.orange),
                  child: Center(
                    child: Text(
                      '3',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class CardSession extends StatelessWidget {
  const CardSession({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 151,
            width: 325,
            decoration: BoxDecoration(
              color: Color.fromRGBO(254, 243, 231, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 23),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1 on 1 Sessions",
                      style: TextStyle(
                          color: Color.fromRGBO(87, 57, 38, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 199,
                      child: Text(
                        'Let’s open up to the things that matter the most ',
                        style: TextStyle(
                            color: Color.fromRGBO(87, 57, 38, 1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Book Now',
                          style: TextStyle(
                              color: Color.fromRGBO(254, 130, 53, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                          children: [
                            WidgetSpan(
                                child: Image.asset(
                              'assets/images/calender.png',
                              width: 17,
                              height: 17,
                            )),
                          ]),
                    ),
                  ]),
            ),
          ),
          Positioned(
              left: 220,
              top: 40,
              child: Image.asset(
                'assets/images/MeetupIcon.png',
                width: 85,
                height: 80,
              ))
        ],
      ),
    );
  }
}
