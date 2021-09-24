import 'package:flutter/material.dart';
import 'package:shop_ata_click/components/my_appbar.dart';

class TrackYourOrder extends StatefulWidget {
  @override
  _TrackYourOrderState createState() => _TrackYourOrderState();
}

class _TrackYourOrderState extends State<TrackYourOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(title: 'Track Your Order'),
      body: Column(
        children: [
          Container(
            height: 80,
            child: Row(crossAxisAlignment: CrossAxisAlignment.end,

              children: [
                Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Order ID',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height:10),
                      Text('ARS812749823478',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Order ID',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height:10),
                      Text('ARS812749823478',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),)
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}
