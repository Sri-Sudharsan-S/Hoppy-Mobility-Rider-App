import 'package:flutter/material.dart';



class paymentpage extends StatelessWidget {
  const paymentpage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCard1("CARDS"),
            SizedBox(height: 20.0),
            _buildCard2("UPI"),
            SizedBox(height: 20.0),
            _buildCard3("WALLETS"),
            SizedBox(height: 20.0),
            _buildCard4("PAY LATER"),
            SizedBox(height: 20.0),
            _buildCard5("NETBANKING"),
            SizedBox(height: 20.0),
            _buildCard6("CASH"),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildCard1(String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.lightGreenAccent,
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15,),
          _buildRow("Add Credit or Debit Card", Icons.payment),
          Divider(),
          _buildRow2("Add Pluxee", "assets/payment/pluxee.png"),
        ],
      ),
    );
  }

  Widget _buildCard2(String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.lightGreenAccent,
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15,),
          _buildRow4("Google Pay", "assets/payment/gpay.png"),
          Divider(),
          _buildRow4("Phone Pe", "assets/payment/phonepe.png"),
          Divider(),
          _buildRow4("Paytm", "assets/payment/paytm.png"),
          Divider(),
          _buildRow3("Add new UPI ID", "assets/payment/upi.png"),
        ],
      ),
    );
  }

  Widget _buildCard3(String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.lightGreenAccent,
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15,),
          _buildRow3("Amazon Pay Balance", "assets/payment/apay.png"),
          Divider(),
          _buildRow3("Mobikwik", "assets/payment/mobiwik.png"),
          Divider(),
          _buildRow3("Paytm Wallet", "assets/payment/paytm.png"),
          Divider(),
          _buildRow3("Add new UPI ID", "assets/payment/upi.png"),
        ],
      ),
    );
  }

  Widget _buildCard4(String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.lightGreenAccent,
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15,),
          _buildRow3("Simpl", "assets/payment/simpl.png"),
          Divider(),
          _buildRow3("LazyPay", "assets/payment/lazypay.png"),
        ],
      ),
    );
  }

  Widget _buildCard5(String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),      color: Colors.lightGreenAccent,
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15,),
          _buildRow("Netbanking", Icons.account_balance),
          SizedBox(height: 15,),
        ],
      ),
    );
  }
  Widget _buildCard6(String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.lightGreenAccent,
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15,),
          _buildRow5("Pay on delivery", Icons.money),
          SizedBox(height: 15,),
        ],
      ),
    );
  }

  Widget _buildRow(String text, IconData iconData) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(iconData, size: 24.0),
          SizedBox(width: 12.0),
          Text(
            text,
            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: Text(
              "ADD",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.red),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow2(String text1, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            // color: Colors.red,
            child: (
                Image.asset(text,fit: BoxFit.contain,)
            ),

          ),
          SizedBox(width: 12.0),
          Text(
            text1,
            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: Text(
              "ADD",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.red),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow3(String text1, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            // color: Colors.red,
            child: (
                Image.asset(text,fit: BoxFit.contain,)
            ),

          ),
          SizedBox(width: 12.0),
          Text(
            text1,
            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: Text(
              "LINK",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.red),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildRow4(String text1, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            // color: Colors.red,
            child: (
                Image.asset(text,fit: BoxFit.contain,)
            ),

          ),
          SizedBox(width: 12.0),
          Text(
            text1,
            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
          ),
          // Expanded(
          //   child: Text(
          //     "ADD",
          //     style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.red),
          //     textAlign: TextAlign.right,
          //   ),
          // ),
        ],
      ),
    );
  }
  Widget _buildRow5(String text, IconData iconData) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          Icon(iconData, size: 24.0),
          SizedBox(width: 12.0),
          Text(
            text,
            style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: Text(
              "ENABLE",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600,color: Colors.red),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }

}
