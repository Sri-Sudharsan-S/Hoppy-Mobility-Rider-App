import 'package:flutter/material.dart';


class settings extends StatelessWidget {
  const settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text("Add a Place",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("In case we're missing something",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("Places You've Added",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("See all the places you've added so far",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("Edit Profile",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("Change your name and profile photo",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("Notification Settings",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("Define what emails and notifications you want to see",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("Account Settings",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("Change your email or delete your account",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text("App Permissions",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ],
            ),
            Row(
              children: [
                Text("Open your phone settings",
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
