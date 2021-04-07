import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class RestaurantDetailsFilled extends StatefulWidget {
  @override
  _RestaurantDetailsFilledState createState() =>
      _RestaurantDetailsFilledState();
}

class _RestaurantDetailsFilledState extends State<RestaurantDetailsFilled> {
  bool status = false;

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
            backgroundColor: Color(0xff181820),
            actions: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: FlutterSwitch(
                  toggleColor: Colors.green,
                  activeColor: Color(0xff34333c),
                  showOnOff: false,
                  width: 60.0,
                  height: 36.0,
                  valueFontSize: 10.0,
                  toggleSize: 17.0,
                  value: status,
                  borderRadius: 30.0,
                  padding: 8.0,
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
              ),
              Icon(
                Icons.add_alert,
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xff181820),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 22.0,
                top: 22.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Spice India Caterers",
                        style: TextStyle(
                            color: const Color(0xffc2c2c0),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 17.0),
                        child: Text(
                          "Store ID 1696",
                          style: TextStyle(
                              color: const Color(0xfff06b6c),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Patna Jn",
                    style: TextStyle(
                        color: const Color(0xffc2c2c0),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Image.asset(
                        'assets/images/myRest.png',
                        scale: 2.5,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.all(15.0),
                                height: 67,
                                child: Order(
                                  money: '199',
                                  iconImage: 'assets/images/rupees.png',
                                  tags: 'Min Order',
                                ),
                              ),
                              Order(
                                money: '60',
                                iconImage: 'assets/images/mins.png',
                                tags: 'Min Delivery Time',
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(15.0),
                                // margin: EdgeInsets.all(15.0),
                                child: Order(
                                  money: '4.5',
                                  iconImage: 'assets/images/security.png',
                                  tags: 'Hygiene Rating',
                                ),
                              ),
                              Order(
                                money: '3.9',
                                iconImage: 'assets/images/starfilled.png',
                                tags: 'Food Rating',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MyRestaurantHeader("Restaurant Info"),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  OrderInfo(
                    userTag: "Restaurant Name",
                    userDetail: "Lucky Arcade",
                  ),
                  OrderInfo(
                    userTag: "Restaurant Address",
                    userDetail: "Opp. old bus stand, kampoo",
                  ),
                  OrderInfo(
                    userTag: "Shipping Address",
                    userDetail: "Opp. old bus stand, kampoo",
                  ),
                  OrderInfo(
                    userTag: "Serving Station",
                    userDetail: "Patna",
                  ),
                  OrderInfo(
                    userTag: "Station Distance ",
                    userDetail: "0.5km",
                  ),
                  OrderInfo(
                    userTag: "Owner E-mail ",
                    userDetail: "pujamishra2006@gmail.com",
                  ),
                  OrderInfo(
                    userTag: "Owner Contact No ",
                    userDetail: "12312312321",
                  ),
                  OrderInfo(
                    userTag: "Alternate No ",
                    userDetail: "12321312312321",
                  ),
                  OrderInfo(
                    userTag: "Owner KYC status ",
                    userDetail: "Yes",
                  ),
                  OrderInfo(
                    userTag: "Agreement Status ",
                    userDetail: "No",
                  ),
                  OrderInfo(
                    userTag: "Security Deposit ",
                    userDetail: "5000",
                  ),
                ],
              ),
            ),
            MyRestaurantHeader("Bank Details"),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  OrderInfo(
                    userTag: "Account Holder Name",
                    userDetail: "Shyam Sundar",
                  ),
                  OrderInfo(
                    userTag: "Bank name & address",
                    userDetail: "ICICI Bank, boring road, bangalore",
                  ),
                  OrderInfo(
                    userTag: "Account Number",
                    userDetail: "8469754993939",
                  ),
                  OrderInfo(
                    userTag: "IFSC Code",
                    userDetail: "ICIC6483902",
                  ),
                ],
              ),
            ),
            MyRestaurantHeader("Tax & Other Informations"),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  OrderInfo(
                    userTag: "Order Taker's Name",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Order Taker's Contact No (1st)",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Order Taker's Contact No (2nd)",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Manager No",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Manager No",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Complaint Whatsapp No",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Billing Name",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Billing Contact No",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Billing Alt Contact No",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Store E-Mail Id",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Commission Detail(Retail)",
                    userDetail: "",
                  ),
                  Stack(
                    children: [
                      OrderInfo(
                        userTag: "Commision Details(Bulk)",
                        userDetail: "",
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 35.0),
                        child: Text(
                          "(2000-5000)",
                          style: const TextStyle(
                              color: const Color(0xff3a9f7b),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 8.0),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      OrderInfo(
                        userTag: "Commision Details(Bulk)",
                        userDetail: "",
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 35.0),
                        child: Text(
                          "(5000-10000 & above)",
                          style: const TextStyle(
                              color: const Color(0xff3a9f7b),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 8.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            MyRestaurantHeader("Timing & Other Details"),
            Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  OrderInfo(
                    userTag: "Order Before Timing (Retail Order)",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Order Before Timing (Bulk Order)",
                    userDetail: "",
                  ),
                  Stack(
                    children: [
                      OrderInfo(
                        userTag: "Preparation time required for OD value",
                        userDetail: "",
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 35.0),
                        child: Text(
                          "(2000-5000)",
                          style: const TextStyle(
                              color: const Color(0xff3a9f7b),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 8.0),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      OrderInfo(
                        userTag: "Preparation time required for OD value",
                        userDetail: "",
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20.0, top: 35.0),
                        child: Text(
                          "(5000-10000 & above)",
                          style: const TextStyle(
                              color: const Color(0xff3a9f7b),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 8.0),
                        ),
                      ),
                    ],
                  ),
                  OrderInfo(
                    userTag: "Delivery Timings",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Break Time",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Week Off days",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Delivery Charges",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Daily order handling capacity(in Rs)",
                    userDetail: "",
                  ),
                  OrderInfo(
                    userTag: "Hourly order handling capacity(in Rs)",
                    userDetail: "",
                  ),
                ],
              ),
            ),
            DashedSeperator(
              color: Color(0xffc2c2c0),
              height: 1.25,
            ),
            Container(
              margin: EdgeInsets.all(4.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Need To Change Any details? ",
                      style: TextStyle(
                          color: const Color(0xfff06b6c),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                    ),
                    MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Text(
                          "Raise a ticket",
                          style: TextStyle(
                              color: const Color(0xfff6e5e5),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 13.0),
                        ),
                        color: Color(0xfff06b6c),
                        onPressed: () {}),
                  ],
                ),
              ),
            ),
            DashedSeperator(
              color: Color(0xffc2c2c0),
              height: 1.25,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(9.0),
                        child: Text("Relationship Manager ",
                            style: const TextStyle(
                                color: const Color(0xfff06b6c),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 16.5),
                            textAlign: TextAlign.left),
                      ),
                      Text("Sandeep Kumar",
                          style: const TextStyle(
                              color: const Color(0xffc2c2c0),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.5),
                          textAlign: TextAlign.left)
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(9.0),
                        child: Text("Contact Number ",
                            style: const TextStyle(
                                color: const Color(0xfff06b6c),
                                fontWeight: FontWeight.w500,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 16.5),
                            textAlign: TextAlign.left),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk,
                            color: Colors.green,
                            size: 17.0,
                          ),
                          Text(" 9563299293",
                              style: const TextStyle(
                                  color: const Color(0xffc2c2c0),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Roboto",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.5),
                              textAlign: TextAlign.left),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyRestaurantHeader extends StatelessWidget {
  final String headerName;
  MyRestaurantHeader(this.headerName);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DashedSeperator(
          color: Color(0xffc2c2c0),
          height: 1.25,
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Text(
            headerName,
            style: TextStyle(
                color: const Color(0xfff06b6c),
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontSize: 16.0),
          ),
        ),
        DashedSeperator(
          color: Color(0xffc2c2c0),
          height: 1.25,
        ),
      ],
    );
  }
}

class OrderInfo extends StatelessWidget {
  final String userTag;
  final String userDetail;

  OrderInfo({this.userTag, this.userDetail});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      child: Row(
        children: [
          Text(
            "$userTag: ",
            style: TextStyle(
                color: const Color(0xffc2c2c0),
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontSize: 15.0),
          ),
          Flexible(
            child: Text(
              " $userDetail",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: const Color(0xfff4ecec),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}

class Order extends StatelessWidget {
  final String money;
  final String iconImage;
  final String tags;
  Order({this.money, this.iconImage, this.tags});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 17,
          width: MediaQuery.of(context).size.height / 11,
          decoration: BoxDecoration(
            color: Color(0xff34333c),
            border: Border.all(
              color: Color(0xfff06b6c),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(7.0),
                child: Image.asset(
                  iconImage,
                  scale: 4.0,
                  color: Color(0xfff06b6c),
                ),
              ),
              Text(
                money,
                style: TextStyle(
                    color: const Color(0xffc2c2c0),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontSize: 14.0),
              ),
            ],
          ),
        ),
        Container(
          width: 50,
          child: Text(
            tags,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: const Color(0xffc2c2c0),
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontSize: 10.0),
          ),
        ),
      ],
    );
  }
}

class DashedSeperator extends StatelessWidget {
  final double height;
  final Color color;

  const DashedSeperator({this.height = 1.0, this.color = Colors.grey});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 6.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
