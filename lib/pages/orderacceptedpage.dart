import "package:flutter/material.dart";
import "package:hbriderapp/models/orderspage.model.dart";
import "package:provider/provider.dart";
class OrderAcceptedPage extends StatefulWidget {
   OrderAcceptedPage(
       {super.key,

     required this.order}
       );

   Map<String , dynamic> order;

  @override
  State<OrderAcceptedPage> createState() => _OrderAcceptedPageState();
}

class _OrderAcceptedPageState extends State<OrderAcceptedPage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Consumer<OrdersProvider>(builder: (context , value ,child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios , color: Colors.white,)),
          backgroundColor: Colors.green, // Set the app bar background color to green
          title: Text('Accepted Order' , style: TextStyle(
              color: Colors.white
          ),), // Set the title to 'Orders Page'
          centerTitle: true, // Center align the title
        ),
        body: Center(
          child: Container(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width:screen.width ,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width : 110 ,
                            child: ElevatedButton(

                              onPressed: (){},
                              child: Text("Cancel Job"),
                              style: ElevatedButton.styleFrom(

                                foregroundColor: Colors.green,
                                backgroundColor: Colors.white, // Set text color to black
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Set border radius to 10
                                ),
                                textStyle: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700
                                ),


                              ),
                            ),
                          ),
                          ElevatedButton(onPressed: (){},
                            child: Icon(Icons.call , color: Colors.green,),
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  width: 1,
                                  color: Colors.green,
                                  style: BorderStyle.solid),
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.white, // Set text color to black
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Set border radius to 10
                              ),
                            ),
                          ),

                          Container(
                            width: 110,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700

                                ),
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.green, // Set text color to black
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // Set border radius to 10
                                ),
                              ),
                              onPressed: () {
                                showModalBottomSheet(context: context,
                                    builder: (BuildContext context){
                                      return Container(
                                        margin: EdgeInsets.only(top : 20),
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        width: screen.width < 400 ? screen.width-20 : 380,
                                        height: 450,
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 2,
                                                          color: Colors.black12
                                                      )
                                                  )
                                              ),
                                              height: 70,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Pick Up ", style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.w600
                                                  ),),

                                                  Container(
                                                    width : screen.width< 400 ? screen.width * 0.4 : 100 ,
                                                    child: Text(widget.order["pickup"],
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.green,
                                                          fontWeight: FontWeight.w400
                                                      ),

                                                    ),)
                                                ],
                                              ),

                                            ),

                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 2,
                                                          color: Colors.black12
                                                      )
                                                  )
                                              ),
                                              height: 70,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Drop Off", style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.w600
                                                  ),),

                                                  Container(
                                                    width : screen.width< 400 ? screen.width * 0.4 : 100 ,
                                                    child: Text(widget.order["dropoff"],
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.green,
                                                          fontWeight: FontWeight.w400
                                                      ),

                                                    ),)
                                                ],
                                              ),

                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 2,
                                                          color: Colors.black12
                                                      )
                                                  )
                                              ),
                                              height: 70,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Total Distance", style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.w600
                                                  ),),

                                                  Container(
                                                    width : screen.width< 400 ? screen.width * 0.4 : 100 ,
                                                    child: Text(widget.order["distance"].toString(),
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.green,
                                                          fontWeight: FontWeight.w400
                                                      ),

                                                    ),)
                                                ],
                                              ),

                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 2,
                                                          color: Colors.black12
                                                      )
                                                  )
                                              ),
                                              height: 70,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Fare", style: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight: FontWeight.w600
                                                  ),),

                                                  Container(
                                                    width : screen.width< 400 ? screen.width * 0.4 : 100 ,
                                                    child: Text(widget.order["fare"].toString(),
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.green,
                                                          fontWeight: FontWeight.w400
                                                      ),

                                                    ),)
                                                ],
                                              ),

                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Text("About"),

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    ));
  }
}

