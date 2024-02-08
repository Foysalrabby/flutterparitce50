import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class custombutton extends StatelessWidget {
  final String buttonmane;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const custombutton(
      {
      required this.buttonmane,
      this.icon,
      this.bgcolor,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: icon != null? Row(children: [
          icon !,
          Text(buttonmane,style: textStyle,)
           
        ],) : Text(buttonmane,style: textStyle,)
        
        
        ); //if else
  }
}
