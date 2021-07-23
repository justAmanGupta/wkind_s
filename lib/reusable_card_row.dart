import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCardRow extends StatelessWidget {
  ReusableCardRow({@required this.item, this.price, this.extra});

  final String item;
  final String price;
  final String extra;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 40,
                width: 40,
              ),
              Container(
                height: 40,
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(item),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("MRP: " + price),
                      Container(
                        height: 40,
                        width: 40,
                      ),
                      Text(
                        extra,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Divider(color: Colors.black)
        ],
      )),
    );
  }
}
