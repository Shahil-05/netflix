import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/page2.dart';
import 'package:netflix/profile_page.dart';
import 'package:netflix/setting_page.dart';

import 'Netfli_Home.dart';
import 'favourite.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;

  List<Widget> screens = <Widget>[
    HomePage(),
    Page2(),
    Favourite(),
    Profile_page(),
    settings_page(),
  ];

  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;

    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.white,size: 30,),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(Icons.notifications_none,color: Colors.white,size: 30,),
        )],
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text ("NETFLIX",
            style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 30),),
        ),
      ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
          currentIndex: selectedIndex,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,color: selectedIndex == 0 ? Colors.red : Colors.white,),label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill_outlined,color: selectedIndex == 1 ? Colors.red : Colors.white,),label: "Play",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: selectedIndex == 2 ? Colors.red : Colors.white,),label: "Favorite",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded,color: selectedIndex == 3 ? Colors.red : Colors.white,),label: "Profile",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: selectedIndex == 4 ? Colors.red : Colors.white,),label: "Settings",
            ),
          ],),

    );
  }
}
