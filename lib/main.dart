// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mindfullness/pages/Home.dart';
import 'package:mindfullness/pages/MediaPage.dart';
import 'package:mindfullness/pages/WellnessHub.dart';
import 'package:mindfullness/pages/profileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    MediaScreen(),
    Messages(),
    Profile()
    // Add your other pages here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[selectedIndex],
        bottomNavigationBar: Stack(
          children: [
            Container(
              height: 70,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                currentIndex: selectedIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: Colors.amber[800],
                unselectedItemColor: Colors.black,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home, size: 32),
                    label: 'Time',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.video_call, size: 32),
                    label: 'Folder',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.message, size: 32),
                    label: 'Folder',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.people, size: 32),
                    label: 'Folder',
                  ),
                ],
              ),
            ),
            Positioned(
              left: 40.0 + (selectedIndex * 100),
              top: 0,
              child: Container(
                width: 12,
                height: 7, // Increased indicator height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  color: Colors.amber[800],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
