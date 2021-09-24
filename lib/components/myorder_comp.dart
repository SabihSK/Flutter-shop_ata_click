import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/utils/constants.dart';
myOrderComp(){
  return   Container(
    height: 180,
    margin: EdgeInsets.only(bottom: 8.0,left: 12.0,right: 12.0,top: 4.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [appBoxShadow]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order #',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              '678676697',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18),
            )
          ],
        ),
        Container(
          height: 1,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Date',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              '19/2/2021',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Price',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              '\$ 100.0',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Status',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              'Pending',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: primaryColor),
              child: Text(
                'Details',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height: 35,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: primaryColor),
              child: Text(
                'Track',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}