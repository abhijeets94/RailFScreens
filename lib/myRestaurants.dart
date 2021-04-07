import 'package:flutter/material.dart';
import 'package:railscreen/myRestaurantsContent.dart';

class MyRestaurant extends StatefulWidget {
  @override
  _MyRestaurantState createState() => _MyRestaurantState();
}

class _MyRestaurantState extends State<MyRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height / 12),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2.0),
              blurRadius: 4.0,
            )
          ]),
          child: AppBar(
            leading: IconButton(
              icon: Image.asset(
                'assets/images/drawer.png',
                scale: 5.0,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            title: Text("MyRestaurant"),
            backgroundColor: Colors.black,
            actions: [
              Icon(
                Icons.add_alert,
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      // drawer: Drawer(
      //   child: Text("HELLO!!"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 22.0, top: 22.0, bottom: 15.0),
              child: Text(
                "Outlet list",
                style: TextStyle(
                    color: const Color(0xffc2c2c0),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              child: MyRestaurantContent(),
            ),
          ],
        ),
      ),
    );
  }
}
