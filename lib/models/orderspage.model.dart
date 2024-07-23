import 'package:flutter/material.dart';

class OrdersProvider extends ChangeNotifier{
    List<Map<String , dynamic>> orders = [
        {
            "key" : 1,
            "pickup" : "123, ABC Street, Bangalore, Karnataka, India",
            "dropoff" : "XYZ Colony, Mumbai, Maharashtra, India",
            "distance" : 7,
            "fare" : 1400,
        },
        {
            "key" : 2,
            "pickup" : "456, DEF Road, Kolkata, West Bengal, India",
            "dropoff" : "ABC Apartment, New Delhi, Delhi, India",
            "distance" : 21,
            "fare" : 1800,
        },
        {
            "key" : 3,
            "pickup" : "GHI Nagar, Chennai, Tamil Nadu, India",
            "dropoff" : "789, PQR Lane, Hyderabad, Telangana, India",
            "distance" : 11,
            "fare" : 1400,
        },
        {
            "key" : 4,
            "pickup" : "JKL Complex, Pune, Maharashtra, India",
            "dropoff" : "MNO Society, Ahmedabad, Gujarat, India",
            "distance" : 30,
            "fare" : 1300,
        },
        {
            "key" : 5,
            "pickup" : "321, QRS Street, Jaipur, Rajasthan, India",
            "dropoff" : "STU Enclave, Lucknow, Uttar Pradesh, India",
            "distance" : 10,
            "fare" : 1200,
        },

    ];

    void ignoreOrder(key){
        orders.removeWhere((order) => order['key'] == key);
    }

    Map<String, dynamic> getOrderByKey(key) {
        return orders.firstWhere((order) => order["key"] == key);
    }


}


