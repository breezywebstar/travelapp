import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/hotel_carousel.dart';

import 'destination_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: (() {
        setState(() {
          _selectedIndex = index;
        });
      }),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0XFFE7EBEE),
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0XFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 100),
              child: Text(
                'What would you like to find in Africa?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(
              height: 20,
            ),
            DestinationCarousel(),
            SizedBox(
              height: 20,
            ),
            HotelCarousel()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTab,
          onTap: (int value) {
            setState(() {
              _currentTab = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_pizza,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('lib/images/ray.png'),
              ),
              label: '',
            ),
          ]),
    );
  }
}
