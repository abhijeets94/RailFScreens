import 'package:flutter/material.dart';
import 'package:railscreen/myRestaurants.dart';
import 'package:railscreen/popUpWhenOff.dart';
import 'package:railscreen/restaurantDetails.dart';
import 'package:railscreen/schedulePopUp.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                child: ElevatedButton(
                  child: Text("My Restaurent Screen"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyRestaurant()),
                    );
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Restaurant Details Filled"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RestaurantDetailsFilled()),
                    );
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Pop Up when restaurant turned off"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PopUpWhenOff()),
                    );
                  },
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: Text("Schedule an off advance"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SchedulePopUp()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
