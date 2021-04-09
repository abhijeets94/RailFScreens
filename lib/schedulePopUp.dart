import 'package:flutter/material.dart';
import 'package:dropdown_date_picker/dropdown_date_picker.dart';

class SchedulePopUp extends StatefulWidget {
  @override
  _SchedulePopUpState createState() => _SchedulePopUpState();
}

class _SchedulePopUpState extends State<SchedulePopUp> {
  int buttonNumber;
  DateTime now = new DateTime.now();

  void _popupDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  contentPadding: EdgeInsets.all(0.0),
                  content: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 393,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      border:
                          Border.all(color: const Color(0xff181820), width: 0),
                      color: const Color(0xff21212b),
                    ),
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Go-online after",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      'assets/images/close.png',
                                      scale: 4.0,
                                      color: Color(0xff807c96),
                                    ),
                                    onTap: () {
                                      Navigator.of(context, rootNavigator: true)
                                          .pop('dialog');
                                    },
                                  ),
                                ],
                              ),
                            ),
                            DashedSeperator(),
                            Container(
                              margin: const EdgeInsets.all(5.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ScheduleTabs(
                                        scheduleTabTag: "Start Date",
                                        scheduleTab: "Select Date",
                                        openDrop: () {
                                          print("Open Date selector");
                                        },
                                      ),
                                      ScheduleTabs(
                                        scheduleTabTag: "Start Time",
                                        scheduleTab: "Select Time",
                                        openDrop: () {
                                          print("Open Time selector");
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ScheduleTabs(
                                        scheduleTabTag: "End Date",
                                        scheduleTab: "Select Date",
                                        openDrop: () {
                                          print("Open Date selector");
                                        },
                                      ),
                                      ScheduleTabs(
                                        scheduleTabTag: "End Time",
                                        scheduleTab: "Select Time",
                                        openDrop: () {
                                          print("Open Time selector");
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(15.0),
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: MediaQuery.of(context).size.height / 18,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2.0,
                                    color: Color(0xff807c96),
                                  ),
                                  borderRadius: BorderRadius.circular(4.0)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Select Reason",
                                    style: TextStyle(
                                        color: const Color(0xffc2c2c0),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Roboto",
                                        fontStyle: FontStyle.normal,
                                        fontSize: 15.0),
                                  ),
                                  InkWell(
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        color: Color(0xff807c96),
                                        size: 40.0,
                                      ),
                                      onTap: () {}),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 12.0),
                              child: Text(
                                  "Restaurant will not receive any order for this time period",
                                  style: const TextStyle(
                                      color: const Color(0xffc7b102),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 11.5),
                                  textAlign: TextAlign.left),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width / 4,
                                  top: 12.0),
                              child: ElevatedButton(
                                child: Text("Submit"),
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(129.0, 34.0),
                                  primary: Color(0xff3a9f7b),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                onPressed: () {
                                  print("Pressed");
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff181820),
        body: Container(
          child: ElevatedButton(
            child: Text("Go Online After"),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Color(0xff181820),
              ),
            ),
            onPressed: () {
              _popupDialog(context);
            },
          ),
        ),
      ),
    );
  }
}

class ScheduleTabs extends StatelessWidget {
  final String scheduleTabTag;
  final String scheduleTab;
  final Function openDrop;

  ScheduleTabs({this.scheduleTab, this.scheduleTabTag, this.openDrop});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(12.0),
          child: Text(scheduleTabTag,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: const Color(0xffc2c2c0),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Roboto",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0)),
        ),
        Container(
            width: MediaQuery.of(context).size.width / 3.0,
            height: MediaQuery.of(context).size.height / 18,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: Color(0xff807c96),
                ),
                borderRadius: BorderRadius.circular(4.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  scheduleTab,
                  style: TextStyle(
                      color: const Color(0xffc2c2c0),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto",
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0),
                ),
                InkWell(
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xff807c96),
                    size: 40.0,
                  ),
                  onTap: openDrop,
                ),
              ],
            )),
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
