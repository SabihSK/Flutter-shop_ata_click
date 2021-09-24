import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ata_click/components/my_appbar.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: myAppbar(title: 'My Orders'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Card(
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(2.0)
),
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                            color: currentIndex == 0
                                ? primaryColor
                                : Colors.grey[200]),
                        child: Text(
                          'Pending (4)',
                          style: TextStyle(
                              color: currentIndex == 0
                                  ? Colors.white
                                  : primaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Card(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0)
                    ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(  borderRadius: BorderRadius.circular(2.0),
                            color: currentIndex == 1
                                ? primaryColor
                                : Colors.grey[200]),
                        child: Text(
                          'Delivered (2)',
                          style: TextStyle(
                              color: currentIndex == 1
                                  ? Colors.white
                                  : primaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Card(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0)
                    ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0),
                            color: currentIndex == 2
                                ? primaryColor
                                : Colors.grey[200]),
                        child: Text(
                          'Canceled (3)',
                          style: TextStyle(
                              color: currentIndex == 2
                                  ? Colors.white
                                  : primaryColor),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
//           Card( margin: EdgeInsets.only(left:8.0,right: 8.0,top: 4.0),
//             child: Container(
//               height: 60,
// padding: EdgeInsets.symmetric(horizontal: 8.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4.0),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text('Order ID: '),
//                       Text('HYR87676876',style: TextStyle(fontWeight: FontWeight.bold),)
//                     ],
//                   ),
//                   Align(alignment: Alignment.centerRight,child: Text('Cancelled',style: TextStyle(color: Colors.red),)),
//
//                   Row(
//                     children: [
//                       Text('Order date'),
//                       Text('   14:00, 16 Oct 2020',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
          IndexedStack(
            index: currentIndex,
            children: <Widget>[
              listOfPendingOrder(),
              listOfDeliveredOrder(),
              listOfCancelledOrder(),
            ],
          )
          //   SizedBox(
          //     height: 20,
          //   ),
          // Expanded(
          //   child: listOfOrders(),
          // )
        ],
      ),
    ));
  }

  listOfCancelledOrder() {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'TransactionHistory');
            },
            child: Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Order ID: '),
                        Text(
                          'HYR87676876',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Cancelled',
                          style: TextStyle(color: Colors.red),
                        )),
                    Row(
                      children: [
                        Text('Order date'),
                        Text(
                          '   14:00, 16 Oct 2020',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  listOfDeliveredOrder() {
    return ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'TransactionHistory');
            },
            child: Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Order ID: '),
                        Text(
                          'HYR87676876',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Delivered',
                          style: TextStyle(color: Colors.green),
                        )),
                    Row(
                      children: [
                        Text('Order date'),
                        Text(
                          '   14:00, 16 Oct 2020',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  listOfPendingOrder() {
    return ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'TransactionHistory');
            },
            child: Card(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
              child: Container(
                height: 60,
                padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Order ID: '),
                        Text(
                          'HYR87676876',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Pending',
                          style: TextStyle(color: primaryColor),
                        )),
                    Row(
                      children: [
                        Text('Order date'),
                        Text(
                          '   14:00, 16 Oct 2020',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
