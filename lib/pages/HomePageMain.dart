import 'package:flutter/material.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          //Toogle
          Container(
            color: Colors.black12,
            width: screen.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Murugesh"),
                Row(
                  children: [Icon(Icons.notifications), Text("Switch button")],
                )
              ],
            ),
          ),

          //Earnings
          Container(
            color: Colors.greenAccent,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Earnings"),
                Container(
                  height: 150,
                  width: screen.width < 400 ? screen.width : 400,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.money),
                          Column(
                            children: [Text("Balance"), Text("10")],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [Text("Balance"), Text("10")],
                          ),
                          Text("|"),
                          Column(
                            children: [Text("Balance"), Text("10")],
                          ),
                          Text("|"),
                          Column(
                            children: [Text("Balance"), Text("10")],
                          ),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),

          //Orders
          Container(),
        ],
      ),
    );
  }
}
