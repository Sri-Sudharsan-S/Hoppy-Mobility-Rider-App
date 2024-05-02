import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;


  @override
  void initState() {

    pages = [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
      // Scaffold(
      // bottomNavigationBar:
      CurvedNavigationBar(
        buttonBackgroundColor:  Color.fromRGBO(250,250 ,250 ,1),
          height: 65,
          backgroundColor: Colors.white,
          color: Color.fromRGBO(240,240 ,240 ,1),
          animationDuration: const Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            InkWell(
              onTap: (){

              },
              child: const Icon(
                Icons.home_outlined,
                color: Colors.green,
              ),
            ),
            const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.green,
            ),
            const Icon(
              Icons.wallet_outlined,
              color: Colors.green,
            ),
            const Icon(
              Icons.person_outline,
              color: Colors.green,
            )
          ]);
    // ,
    //   body: pages[currentTabIndex],
    // );
  }
}