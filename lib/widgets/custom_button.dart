import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class CustomButton extends StatefulWidget {
  String title;
  Function callback;
  CustomButton({this.title,this.callback});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        color: primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        onPressed: widget.callback,
        child: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
