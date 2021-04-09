import 'package:flutter/material.dart';
import 'package:railscreen/restaurantDetails.dart';

class MyRestaurantContent extends StatefulWidget {
  @override
  _MyRestaurantContentState createState() => _MyRestaurantContentState();
}

class _MyRestaurantContentState extends State<MyRestaurantContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OutletList(
            storeId: 1696,
            caterers: "Spice India Caterers",
            station: "Patna Jn",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RestaurantDetailsFilled()));
            },
          ),
          OutletList(
            storeId: 1697,
            caterers: "Spice India Caterers",
            station: "Patna City",
            onTap: () {
              print("1697 clicked");
            },
          ),
          OutletList(
            storeId: 1698,
            caterers: "Spice India Caterers",
            station: "Patliputra Jn",
            onTap: () {
              print("1698 clicked");
            },
          ),
        ],
      ),
    );
  }
}

class OutletList extends StatelessWidget {
  final double storeId;
  final String caterers;
  final String station;
  final Function onTap;
  OutletList({this.storeId, this.caterers, this.station, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(17.0),
      decoration: BoxDecoration(
        color: Color(0xff34333c),
        border: Border.all(
          width: 2.0,
          color: Color(0xfff06b6c),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        margin: EdgeInsets.only(
          left: 17.0,
          top: 17.0,
          bottom: 17.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //image container
            ClipRRect(
              borderRadius: BorderRadius.circular(
                6.0,
              ),
              child: Image.asset(
                'assets/images/myRest.png',
                scale: 3.8,
                fit: BoxFit.fill,
              ),
            ),
            //store id, name etc
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Store ID ${storeId.toInt()}",
                      style: TextStyle(
                          color: const Color(0xfff06b6c),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                      // textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    child: Text(
                      caterers,
                      style: const TextStyle(
                          color: const Color(0xffc2c2c0),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                    ),
                  ),
                  Container(
                    child: Text(
                      station,
                      style: const TextStyle(
                          color: const Color(0xffc2c2c0),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 15.0),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    margin: EdgeInsets.only(top: 10.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Text(
                        "View Details",
                        style: TextStyle(
                            color: const Color(0xfff6e5e5),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 13.0),
                      ),
                      color: Color(0xfff06b6c),
                      onPressed: onTap,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
