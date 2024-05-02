import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      height: screen.height - 65,
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              //Toogle
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: Colors.black12))),
                height: 50,
                width: screen.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(isSwitched ? "Status : Active " : "Status : Idle"),
                    Row(
                      children: [
                        Icon(Icons.notifications),
                        Switch(
                          activeColor: Colors.green,
                            inactiveThumbColor: Colors.green,
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),

              //Earnings
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text("Earnings")),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      margin: EdgeInsets.all(5),
                      height: 150,
                      width: screen.width < 400 ? screen.width : 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.moneyCheckDollar,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      print("Pressed");
                                    }),
                                Column(
                                  children: [
                                    Text(
                                      "Balance",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "₹ 10",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Today",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "₹ 10",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Text("|"),
                              Column(
                                children: [
                                  Text(
                                    "This Week ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "₹ 10",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Text(
                                "|",
                                style: TextStyle(color: Colors.white),
                              ),
                              Column(
                                children: [
                                  Text(
                                    "This Month",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "₹ 10",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
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
              Container(
                width: screen.width < 400 ? screen.width : 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Orders"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.circular(5)),
                          height: 150,
                          width: screen.width < 400 ? screen.width * 0.48 : 195,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "2",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                "Today's Orders",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.redAccent),
                          height: 150,
                          width: screen.width < 400 ? screen.width * 0.48 : 195,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              Text(
                                "This Week Orders",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green),
                height: 100,
                width: screen.width < 400 ? screen.width : 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Today's Orders",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                ),
                margin: EdgeInsets.only(bottom: 5, left: 5, right: 5),
                height: 100,
                width: screen.width < 400 ? screen.width : 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "Today's Orders",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
