import 'package:flutter/material.dart';
import 'package:hbriderapp/models/orderspage.model.dart';
import 'package:hbriderapp/pages/HomePageMain.dart';
import 'package:hbriderapp/pages/bottomnavbar.dart';
import 'package:hbriderapp/pages/orderacceptedpage.dart';
import 'package:hbriderapp/pages/orderspage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => OrdersProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            HomePageMain(),
            BottomNav(),
          ],
        ),
      ),
    );
  }
}
