import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class CartIcon extends StatefulWidget {
  @override
  _CartIconState createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'MyCart');
      },
      child: Stack(
        children: [
          Container(
            height: 45,
            color: Colors.transparent,
            padding: EdgeInsets.only(top: 8.0),
            child: Container(
              height: 50.0,

              //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
              ),
              child: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
              top: 5,
              right: 0,
              child: CircleAvatar(
                maxRadius: 8,
                child: Text(
                  '5',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                backgroundColor: primaryColor,
              ))
        ],
      ),
    );
  }
}
