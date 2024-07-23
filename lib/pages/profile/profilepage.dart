import 'package:flutter/material.dart';
import 'package:hbriderapp/pages/profile/settings.dart';

import '../loginpage/loginpage.dart';
import '../payment/paymentpage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.lightGreenAccent,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/profile/profile.png'), // Replace with your image asset
                          fit: BoxFit.contain,
                          alignment: Alignment.center
                      ),
                    ),
                    height: 150.0, // Adjust the height according to your needs
                  ),
                  Text(
                    "Salman",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        ListTile(
                          title: Text('Email'),
                          subtitle: Text('salman@gmail.com'),
                        ),
                        Divider(),
                        ListTile(
                          title: Text('Phone'),
                          subtitle: Text('+91 7809065421'),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                  // SizedBox(height: 2.0), // Add some space between existing content and new containers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Column(
                      //   children: [
                      //     InkWell(
                      //       onTap: () {
                      //         Navigator.push(
                      //           context,
                      //           MaterialPageRoute(
                      //             builder: (context) => FavoritePage(),
                      //           ),
                      //         );
                      //       },
                      //       child:
                      //       Container(
                      //         width: 75.0, // Adjust width as needed
                      //         height: 75.0, // Adjust height as needed
                      //         decoration: BoxDecoration(
                      //           color: Colors.white,
                      //           borderRadius: BorderRadius.circular(15.0),
                      //           image: DecorationImage(
                      //               image: AssetImage('assets/profile/fav.png'), // Replace with your image asset
                      //               fit: BoxFit.contain,
                      //               alignment: Alignment.center
                      //           ),
                      //         ),
                      //       ),),
                      //     Text(
                      //       "Favourites",style: TextStyle(
                      //       fontWeight: FontWeight.w600,
                      //     ),
                      //     )
                      //   ],
                      // ),
                      // Divider(),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => paymentpage(),
                                ),
                              );
                            },
                            child:
                            Container(
                              width: 75.0, // Adjust width as needed
                              height: 75.0, // Adjust height as needed
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/profile/payment.png'), // Replace with your image asset
                                    fit: BoxFit.contain,
                                    alignment: Alignment.center
                                ),
                              ),
                              // Add your content inside the container
                            ),),
                          Text(
                            "Payment",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          )
                        ],
                      ),
                      Divider(),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => settings(),
                                ),
                              );
                            },
                            child:
                            Container(
                              width: 75.0, // Adjust width as needed
                              height: 75.0, // Adjust height as needed
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/profile/settings.png'), // Replace with your image asset
                                    fit: BoxFit.contain,
                                    alignment: Alignment.center
                                ),
                              ),
                            ),),
                          Text(
                            "Settings",style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          )
                        ],
                      ),
                      // Add some space between existing content and new containers
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),

            // SizedBox(height: 20.0),
            // Card(
            //   elevation: 4.0,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(15.0),
            //   ),
            //   color: Colors.lightGreenAccent,
            //   child: Padding(
            //     padding: EdgeInsets.all(20.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Saved Addresses',
            //           style: TextStyle(
            //             fontSize: 20.0,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         SizedBox(height: 10.0),
            //         Text('Address 1',
            //           style: TextStyle(
            //             fontSize: 15.0,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //         ListTile(
            //           subtitle: Text('6, Shaikh Mistry Rd, C.G.S. colony, CGS Colony, Sector 7, Antop Hill, Mumbai, Maharashtra 400037'),
            //           trailing: IconButton(
            //             icon: Icon(Icons.edit),
            //             onPressed: () {
            //               // Implement edit functionality
            //             },
            //           ),
            //         ),
            //         Divider(),
            //         Text('Address 2',
            //           style: TextStyle(
            //             fontSize: 15.0,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //         ListTile(
            //           subtitle: Text('15-25, Keluskar Rd N, Dadar West, Shivaji Park, Mumbai, Maharashtra 400028'),
            //           trailing: IconButton(
            //             icon: Icon(Icons.edit),
            //             onPressed: () {
            //               // Implement edit functionality
            //             },
            //           ),
            //         ),
            //         Divider(),
            //         Text("Add More")
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: 20.0,),
            Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.lightGreenAccent,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Order History',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ListTile(
                      title: Text('Order #001',style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),),
                      subtitle: Text('KFC',style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),),
                      trailing: Text('\Rs 200.00'),
                    ),
                    Text("1x Zinger Burger"),
                    Text("1x Wednesday Strips 12 Pcs"),
                    Divider(),
                    ListTile(
                      title: Text('Order #001',style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),),
                      subtitle: Text('Dominos',style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),),
                      trailing: Text('\Rs 100.00'),
                    ),
                    Text("1x Classic Corn Pizza"),
                    Text("1x Chicken Pepperoni"),
                    Divider(),
                    Text("More Previous Orders"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            // Card(
            //   elevation: 4.0,
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(15.0),
            //   ),
            //   color: Colors.lightGreenAccent,
            //   child: Padding(
            //     padding: EdgeInsets.all(20.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Text(
            //           'Preferences',
            //           style: TextStyle(
            //             fontSize: 20.0,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         SizedBox(height: 10.0),
            //         ListTile(
            //           title: Text('Favorite Cuisine'),
            //           subtitle: Text('Chinese'),
            //           trailing: IconButton(
            //             icon: Icon(Icons.edit),
            //             onPressed: () {
            //               // Implement edit functionality
            //             },
            //           ),
            //         ),
            //         Divider(),
            //         ListTile(
            //           title: Text('Dietary Restrictions'),
            //           subtitle: Text('Vegetarian'),
            //           trailing: IconButton(
            //             icon: Icon(Icons.edit),
            //             onPressed: () {
            //               // Implement edit functionality
            //             },
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Change this to the desired color
              ),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}

// class FavoritePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Favourites'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//             child: Wrap(
//               direction: Axis.vertical,
//               spacing:40,
//               runSpacing: 20,
//               children: [
//                 kfcrescard(),
//                 dominorescard(),
//                 pizzahutrescard(),
//               ],
//             )
//
//         ),
//       ),
//     );
//   }
// }

