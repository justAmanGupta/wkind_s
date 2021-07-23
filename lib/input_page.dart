import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'reusable_card_row.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;
  Widget activeWidget = listViewGiven();
  static Color activeColor = Color(0xFF5eb075);
  static Color inactiveColor = Color(0xFFd3bebe);
  Color c1 = activeColor;
  Color c2 = inactiveColor;
  Color c3 = inactiveColor;
  Color c4 = inactiveColor;
  Color c5 = inactiveColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Container(
                color: Color(0xffE5E9F6),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Explore",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Filter",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[800]),
                            hintText: "Search",
                            fillColor: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
              height: 120,
              color: Colors.white70,
            ),
            //APPBAR END
//APPBAR END
//APPBAR END
//APPBAR END
//APPBAR END
//APPBAR END
//APPBAR END
//APPBAR END
            activeWidget,
            Container(
              child: Container(
                  color: Color(0xffE5E9F6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      RoundIconButton(
                        icon: FontAwesomeIcons.timesCircle,
                        color: c1,
                        onPressed: () {
                          setState(() {
                            activeWidget = listViewGiven();
                            c1 = activeColor;
                            c2 = inactiveColor;
                            c3 = inactiveColor;
                            c4 = inactiveColor;
                            c5 = inactiveColor;
                          });
                        },
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.timesCircle,
                        color: c2,
                        onPressed: () {
                          setState(() {
                            activeWidget = gridOne();
                            c1 = inactiveColor;
                            c2 = activeColor;
                            c3 = inactiveColor;
                            c4 = inactiveColor;
                            c5 = inactiveColor;
                          });
                        },
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.timesCircle,
                        color: c3,
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.timesCircle,
                        color: c4,
                        onPressed: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      RoundIconButton(
                        icon: FontAwesomeIcons.timesCircle,
                        color: c5,
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                    ],
                  )),
              height: 80,
              color: Color(0xff0A0A0A),
            ),
          ],
        ),
      ),
    );
  }
}

Widget listViewGiven() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ReusableCardRow(
                  item: "Item 1",
                  price: "₹ 100",
                  extra: "Same day shipping",
                ),
                ReusableCardRow(
                  item: "Item 2",
                  price: "₹ 400",
                  extra: "Same day shipping",
                ),
                ReusableCardRow(
                  item: "Item 3",
                  price: "₹ 100",
                  extra: "",
                ),
                ReusableCardRow(
                  item: "Item 4",
                  price: "₹ 80",
                  extra: "",
                ),
                ReusableCardRow(
                  item: "Item 5",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCardRow(
                  item: "Item 6",
                  price: "₹ 70",
                  extra: "",
                ),
                ReusableCardRow(
                  item: "Item 7",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCardRow(
                  item: "Item 8",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCardRow(
                  item: "Item 9",
                  price: "₹ 190",
                  extra: "",
                ),
              ])),
    ),
  );
}

Widget gridOne() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ReusableCard(
                  item: "Item 1",
                  price: "₹ 100",
                  extra: "Same day shipping",
                ),
                ReusableCard(
                  item: "Item 2",
                  price: "₹ 400",
                  extra: "Same day shipping",
                ),
                ReusableCard(
                  item: "Item 3",
                  price: "₹ 100",
                  extra: "",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ReusableCard(
                  item: "Item 4",
                  price: "₹ 80",
                  extra: "",
                ),
                ReusableCard(
                  item: "Item 5",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCard(
                  item: "Item 6",
                  price: "₹ 70",
                  extra: "",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ReusableCard(
                  item: "Item 7",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCard(
                  item: "Item 8",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCard(
                  item: "Item 9",
                  price: "₹ 190",
                  extra: "",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ReusableCard(
                  item: "Item 10",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCard(
                  item: "Item 11",
                  price: "₹ 190",
                  extra: "",
                ),
                ReusableCard(
                  item: "Item 12",
                  price: "₹ 190",
                  extra: "",
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
