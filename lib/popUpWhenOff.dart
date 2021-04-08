import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class PopUpWhenOff extends StatefulWidget {
  @override
  _PopUpWhenOffState createState() => _PopUpWhenOffState();
}

class _PopUpWhenOffState extends State<PopUpWhenOff> {
  int buttonNumber;
  String _chosenValue = 'Select Reason';

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
                            RadioButtonGroup(
                              activeColor: Colors.black,
                              labelStyle: TextStyle(
                                color: Color(0xff807c96),
                              ),
                              labels: [
                                "30 mins",
                                "1 hour",
                                "2 hour",
                                "3 hour",
                                "4 hour",
                                "Tomorrow Meeting",
                                "Custom Date and Time"
                              ],
                              onChange: (String label, int index) =>
                                  print("label: $label index: $index"),
                              onSelected: (String label) => print(label),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff807c96)),
                                  borderRadius: BorderRadius.circular(12.0)),
                              margin: const EdgeInsets.all(5.0),
                              child: DropdownButton<String>(
                                value: _chosenValue,
                                dropdownColor: Color(0xff21212b),
                                //elevation: 5,
                                style: TextStyle(
                                  color: Color(0xffc2c2c0),
                                ),
                                focusColor: Color(0xff21212b),
                                items: <String>[
                                  'Select Reason',
                                  'Festival',
                                  'Account Issue',
                                  'Electricity Issue',
                                  'Manpower Issue',
                                  'Personal Reasons',
                                  'Due to Emergency',
                                  'Maintainence Work',
                                  'Reasons Not Listed',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Container(
                                      margin: EdgeInsets.all(12.0),
                                      child: Text(value),
                                    ),
                                  );
                                }).toList(),
                                hint: Container(
                                  margin: EdgeInsets.all(15.0),
                                  child: Text(
                                    "  $_chosenValue                       ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    _chosenValue = value;
                                  });
                                },
                              ),
                            ),
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
            child: Text("Menu-Filter"),
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
