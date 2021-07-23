import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.item, this.price, this.extra});

  final String item;
  final String price;
  final String extra;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.white70,
          height: 150,
          width: 80,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(item),
                Text("MRP: " + price),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 80,
                  width: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
