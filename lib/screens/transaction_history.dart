import 'package:flutter/material.dart';
import 'package:shop_ata_click/components/my_appbar.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
class TransactionHistory extends StatefulWidget {
  @override
  _TransactionHistoryState createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(title: 'Transaction History'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex=0;
                      });
                    },
                    child: Card(
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: currentIndex==0?primaryColor:Colors.grey[200]),
                        child: Text(
                          'Completed',
                          style: TextStyle(color: currentIndex==0?Colors.white:primaryColor),
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
                    onTap: (){
                      setState(() {
                        currentIndex=1;
                      });
                    },
                    child: Card(
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(color:currentIndex==1?primaryColor: Colors.grey[200]),
                        child: Text(
                          'Failed',
                          style: TextStyle(color: currentIndex==1?Colors.white:primaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

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
              listOfCompletedOrder(),
              listOfFailedOrder(),
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
    );
  }

  listOfCompletedOrder(){
    return ListView.builder(itemCount: 2,shrinkWrap: true,itemBuilder: (context,index){
      return     Card( margin: EdgeInsets.only(left:8.0,right: 8.0,top: 8.0),
        child: Container(
          height: 60,
          padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Transaction ID: '),
                  Text('798JKADSHLAHDLTRY',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Align(alignment: Alignment.centerRight,child: Text('\$250.0',style: TextStyle(fontWeight: FontWeight.bold),)),

              Row(
                children: [
                  Text('Payment method'),
                  Text(' Paypal Limited',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  listOfFailedOrder(){
    return ListView.builder(itemCount: 2,shrinkWrap: true,itemBuilder: (context,index){
      return     Card( margin: EdgeInsets.only(left:8.0,right: 8.0,top: 8.0),
        child: Container(
          height: 60,
          padding: EdgeInsets.only(left: 8.0,right: 8.0,top: 4.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Transaction ID: '),
                  Text('679KSJHFLKSHYTE',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              Align(alignment: Alignment.centerRight,child: Text('Failed',style: TextStyle(color: Colors.red),)),
              Row(
                children: [
                  Text('Payment method'),
                  Text(' Paypal Limited',style: TextStyle(color: Colors.grey),)
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
