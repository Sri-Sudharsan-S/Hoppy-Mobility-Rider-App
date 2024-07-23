import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hbriderapp/pages/orderspage.dart';
import 'package:hbriderapp/pages/payment/paymentpage.dart';
import 'package:hbriderapp/pages/profile/profilepage.dart';

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
        buttonBackgroundColor:Colors.green,
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.green,
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
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersMainPage()),
                );
              },
              child: FaIcon(
                FontAwesomeIcons.motorcycle,
                size: 20,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => paymentpage()),
                );
              },
            child:Icon(
              Icons.wallet_outlined,
              color: Colors.white,
            ),),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              child:
            const Icon(
              Icons.person_outline,
              color: Colors.white,
            )),
          ]);
    // ,
    //   body: pages[currentTabIndex],
    // );
  }
}