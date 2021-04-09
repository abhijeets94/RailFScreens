import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  var _listTextTabToggle = ["All Items", "Out of Stock(5)"];
  var _listTextSelectedToggle = [
    "All Items",
    "Out of Stocks",
  ];
  var _tabTextIndexSelected = 0;
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff181820),
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 10),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  // color: Colors.grey,
                  // offset: Offset(0, 2.0),
                  // blurRadius: 4.0,
                  )
            ]),
            child: AppBar(
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xffc2c2c0),
                  size: 30.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text("MyRestaurant"),
              backgroundColor: Color(0xff181820),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Color(0xffc2c2c0),
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 10,
                // color: Color(0xff181820),
                decoration: BoxDecoration(color: Color(0xff181820), boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 2.0),
                    blurRadius: 4.0,
                  )
                ]),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 28.0,
                    vertical: 20.0,
                  ),
                  child: // Here default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                      FlutterToggleTab(
                    // width in percent
                    width: 90,
                    borderRadius: 4,
                    height: 50,
                    initialIndex: 0,
                    selectedBackgroundColors: [Color(0xfff06b6c)],
                    unSelectedBackgroundColors: [Color(0xff34333c)],
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                    unSelectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    labels: _listTextTabToggle,
                    selectedLabelIndex: (index) {
                      setState(() {
                        _tabTextIndexSelected = index;
                      });
                    },
                    isScroll: false,
                  ),
                ),
              ),
              MenuItemHeader(
                menuHeader: "Starters (5)",
              ),
              Divider(
                color: Color(0xff383845),
                height: 1,
              ),
              menuItems(context, "Paneer Tikka", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
              menuItems(context, "Veg Deluxe Thaali", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
              menuItems(context, "Paneer Tiranga", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
              menuItems(context, "Paneer 65", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(color: Color(0xff181820), boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, -3.0),
                    blurRadius: 4.0,
                  )
                ]),
                child: MenuItemHeader(
                  menuHeader: "Deserts (4)",
                ),
              ),
              Divider(
                color: Color(0xff383845),
                height: 1,
              ),
              menuItems(context, "Paneer Tikka", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
              menuItems(context, "Veg Deluxe Thaali", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
              menuItems(context, "Paneer Tiranga", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
              menuItems(context, "Paneer 65", "199", (val) {
                setState(() {
                  status = val;
                });
              }),
            ],
          ),
        ),
      ),
    );
  }

  Container menuItems(BuildContext context, String itemName, String itemPrice,
      Function toggleValue) {
    return Container(
      // margin: EdgeInsets.all(12.0)r,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/myRest.png',
                scale: 5,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text(
                      itemName,
                      style: TextStyle(
                        color: Color(0xffc2c2c0),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/listv-view.png',
                          scale: 5,
                          color: Color(0xff807c96),
                        ),
                        Image.asset(
                          'assets/images/listv-view.png',
                          scale: 5,
                          color: Color(0xff807c96),
                        ),
                        Image.asset(
                          'assets/images/listv-view.png',
                          scale: 5,
                          color: Color(0xff807c96),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/rupees.png',
                          scale: 5.0,
                          color: Color(0xfff06b6c),
                        ),
                        SizedBox(),
                        Text(
                          itemPrice,
                          style: TextStyle(
                            color: const Color(0xffc2c2c0),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Roboto",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.5,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0, right: 15.0),
            child: FlutterSwitch(
              toggleColor: Colors.green,
              activeColor: Color(0xff34333c),
              showOnOff: false,
              width: 60.0,
              height: 26.0,
              valueFontSize: 10.0,
              toggleSize: 18.0,
              value: status,
              borderRadius: 4.0,
              padding: 3.0,
              onToggle: toggleValue,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItemHeader extends StatelessWidget {
  final String menuHeader;

  MenuItemHeader({this.menuHeader});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            menuHeader,
            style: TextStyle(
                color: const Color(0xffc2c2c0),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontSize: 17.0),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Color(0xff807c96),
            size: 40,
          ),
        ],
      ),
    );
  }
}
