import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon, @required this.onPressed, @required this.color});
  final IconData icon;
  final Function onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Container(),
      onPressed: onPressed,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        height: 40,
        width: 40,
      ),
      shape: CircleBorder(),
      fillColor: color,
    );
  }
}
