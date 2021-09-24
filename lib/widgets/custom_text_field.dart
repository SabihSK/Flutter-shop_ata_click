import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class CustomTextField extends StatefulWidget {
  String hint;
  TextInputType keyboardType;
  String initialValue;

  CustomTextField({this.hint, this.keyboardType,this.initialValue});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300],
              offset: Offset(2.0, 2.0), //(x,y)
              blurRadius: 5,
              spreadRadius: 0),
        ],
      ),
      child: TextFormField(style: TextStyle(color: Colors.grey),
        initialValue: widget.initialValue,cursorColor: primaryColor,
        obscureText: widget.hint=='Please enter your password'?true:false,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: TextStyle(color: Colors.grey[500]),
            contentPadding: EdgeInsets.only(left: 8.0),
            border: InputBorder.none,

            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none),
      ),
    );
  }
}
