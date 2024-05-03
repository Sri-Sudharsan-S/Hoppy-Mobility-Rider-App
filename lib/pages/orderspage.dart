import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hbriderapp/models/orderspage.model.dart';
import 'package:provider/provider.dart';

import 'orderacceptedpage.dart';
class OrdersMainPage extends StatefulWidget {
  const OrdersMainPage({super.key});

  @override
  State<OrdersMainPage> createState() => _OrdersMainPageState();
}

class _OrdersMainPageState extends State<OrdersMainPage> {
  void updateState() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Consumer<OrdersProvider>(builder: (context , value , child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios , color: Colors.white,)),
          backgroundColor: Colors.green, // Set the app bar background color to green
          title: Text('Orders Page ' , style: TextStyle(
              color: Colors.white
          ),), // Set the title to 'Orders Page'
          centerTitle: true, // Center align the title
        ),
        body: Container(
          width: screen.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for(int i=0;i< value.orders.length;i++)
                  OrdersCard(
                    id : value.orders[i]["key"],
                    pickup : value.orders[i]["pickup"],
                    dropoff: value.orders[i]["dropoff"],
                    distance : value.orders[i]["distance"],
                    fare : value.orders[i]["fare"],
                      updateState : updateState,

                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}


class OrdersCard extends StatefulWidget {
   OrdersCard({super.key,
    required this.id,
    required this.pickup,
    required this.dropoff,
    required this.distance,
    required this.fare,
     required this.updateState});
  int id ;
  final pickup;
  final dropoff;
  final distance;
  final fare;
  Function updateState;

  @override
  State<OrdersCard> createState() => _OrdersCardState();
}

class _OrdersCardState extends State<OrdersCard> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Consumer<OrdersProvider>(builder: (context , value , child) => Container(
      margin: EdgeInsets.all(10),
      width: screen.width < 400 ? screen.width : 400,
      height: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black12,
            width: 1.5,
          )
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Info
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        width: 2 ,
                        color : Colors.black12
                    )
                )
            ),
            padding: EdgeInsets.all(10),
            height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Pickup
                    Container(
                      width:  screen.width < 400 ? screen.width * 0.4 : 140 ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pick Up" , style: TextStyle(
                              color: Color.fromRGBO(100 , 200 , 100 ,1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),

                          Text(widget.pickup, style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,

                          ),
                            maxLines: 2,overflow: TextOverflow.ellipsis ,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width:  screen.width < 400 ? screen.width * 0.3 : 140 ,
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Distance" , style: TextStyle(
                              color: Color.fromRGBO(100 , 200 , 100 ,1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),

                          Text(widget.distance.toString() + " Km", style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                    ),

                    // Drop Off



                  ],
                ),

                //Dis and fare
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Container(
                      width:  screen.width < 400 ? screen.width * 0.4 : 140 ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Drop Off" , style: TextStyle(
                              color: Color.fromRGBO(100 , 200 , 100 ,1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),

                          Text(widget.dropoff, style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),maxLines: 2,overflow: TextOverflow.ellipsis ,),
                        ],
                      ),
                    ),

                    Container(
                      width:  screen.width < 400 ? screen.width * 0.3 : 140 ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fare" ,style: TextStyle(
                              color: Color.fromRGBO(100 , 200 , 100 ,1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),

                          Text("₹" + widget.fare.toString(), style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),),
                        ],
                      ),
                    ),


                  ],
                ),
              ],
            ),
          ),

          //buttons
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final cartModel = context.read<OrdersProvider>();
                      cartModel.ignoreOrder(widget.id);
                      print("ignored" + widget.id.toString());
                      widget.updateState();

                    });

                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.white, // Set text color to black
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Set border radius to 10
                    ),
                  ),
                  child: Text("Ignore"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child:   ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> OrderAcceptedPage(

                      )));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green, // Set text color to black
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Set border radius to 10
                      ),
                    ),
                    child: Text("Accept"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}


