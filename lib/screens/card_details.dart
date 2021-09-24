import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class CardDetails extends StatefulWidget {
  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cards',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context,'AddCard');
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Your Payment Cards'),
            SizedBox(height: 10),
            Container(
             // color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(1.0),
              child: Container(
                height: 180,
                padding: EdgeInsets.all(18.0),
                width: double.infinity,
               // margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[500]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank Name',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 30,),
                    Text('1244 6308 8208 9932',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(left:120.0,top: 8.0),
                      child: Text('02/34',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text('Card Holder',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              // color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(1.0),
              child: Container(
                height: 180,
                padding: EdgeInsets.all(18.0),
                width: double.infinity,
                // margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[500]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank Name',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 30,),
                    Text('1244 6308 8208 9932',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(left:120.0,top: 8.0),
                      child: Text('02/34',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text('Card Holder',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              // color: Colors.red,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(1.0),
              child: Container(
                height: 180,
                padding: EdgeInsets.all(18.0),
                width: double.infinity,
                // margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[500]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank Name',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 30,),
                    Text('1244 6308 8208 9932',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(left:120.0,top: 8.0),
                      child: Text('02/34',style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text('Card Holder',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
