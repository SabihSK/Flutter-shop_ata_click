import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ata_click/components/my_appbar.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/utils/constants.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  String selected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '\$ 248.00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                height: 40,
                width: 100,
                child: RaisedButton(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'PaymentSuccessful');
                  },
                  child: Text(
                    'Shop Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        appBar: myAppbar(title: 'Checkout'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Address',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'ShippingAddress');
                        },
                        child: Text(
                          'Change Address',
                          style: TextStyle(color: Colors.grey),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 80,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [appBoxShadow]),
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //............................Shipping Mode............................
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Mode',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Change Mode',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [appBoxShadow]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flat Rate',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '\$20.0',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Text(
                  'Items',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),

                Column(
                  children: [
                    Container(
                      height: 130,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            margin: EdgeInsets.only(
                                top: 18.0, bottom: 18.0, left: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[200],
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/gaming1.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.only(
                                  top: 18.0, left: 8.0, bottom: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Text(
                                            'Stretchable Denim Jacket Skinny Fit Jeans ',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Company: Denim'),
                                  Spacer(),
                                  Text(
                                    '\$120',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 130,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            margin: EdgeInsets.only(
                                top: 18.0, bottom: 18.0, left: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[200],
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/camera1.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              margin: EdgeInsets.only(
                                  top: 18.0, left: 8.0, bottom: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Text(
                                            'Stretchable Denim Jacket Skinny Fit Jeans ',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('Company: Denim'),
                                  Spacer(),
                                  Text(
                                    '\$120',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
                Text(
                  'Payment Method',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Row(
                //     children: [
                //       // Expanded(
                //       //   child: GestureDetector(
                //       //     onTap: (){
                //       //       setState(() {
                //       //         selected='visa';
                //       //       });
                //       //     },
                //       //     child: Container(
                //       //       height: 70,
                //       //       decoration: BoxDecoration(
                //       //           borderRadius: BorderRadius.circular(8.0),
                //       //           color: Colors.grey[300]),
                //       //       child: Image.asset('assets/images/paypal.png'),
                //       //     ),
                //       //   ),
                //       // ),
                //       // SizedBox(
                //       //   width: 5,
                //       // ),
                //       Expanded(
                //         child: GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               selected='visa';
                //             });
                //           },
                //           child: Container(
                //             padding: EdgeInsets.all(2.0),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(8.0),color:selected=='visa'? primaryColor:Colors.transparent,
                //             ),
                //             child: Container(
                //               height: 70,
                //               padding: EdgeInsets.all(12.0),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(8.0),
                //                   color: Colors.grey[300]),
                //               child: Image.asset(
                //                 'assets/images/visa.png',
                //                 color: Colors.orange,
                //                 height: 15,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //       SizedBox(
                //         width: 5,
                //       ),
                //       Expanded(
                //         child: GestureDetector(
                //           onTap: (){
                //             setState(() {
                //               selected='mastercard';
                //             });
                //           },
                //           child: Container(
                //             padding: EdgeInsets.all(2.0),
                //            decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(8.0),
                //              color:selected=='mastercard'? primaryColor:Colors.transparent,
                //           ),
                //             child: Container(
                //               height: 70,
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(8.0),
                //                   color: Colors.grey[300]),
                //               child: Image.asset('assets/images/master_card.png'),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // )
                Container(
                  height: 40,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [appBoxShadow]),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/paypal.png',
                        height: 80,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Paypal',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Total',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  padding: EdgeInsets.all(8.0),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [appBoxShadow]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order Amount',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('\240.00')
                        ],
                      ), Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping Fee',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('\$3.00')
                        ],
                      ), Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discount',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('\$5.00')
                        ],
                      ), Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tax',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('0.00')
                        ],
                      ), Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Payable',style: TextStyle(fontWeight: FontWeight.bold),),
                          Text('\$248.00')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
