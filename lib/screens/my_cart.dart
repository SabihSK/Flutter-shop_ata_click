import 'package:flutter/material.dart';
import 'package:shop_ata_click/models/cart.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Cart> list = [
    Cart(
        title: 'Stretchable Denim Jacket Skinny Fit Jeans ',
        img: 'assets/images/apparel1.jpg',
        price: '30',
        quantity: 1),
    Cart(
        title: 'Blue color Shirt in frock style',
        img: 'assets/images/watch1.jpg',
        price: '23',
        quantity: 1),
    Cart(
        title: 'Beige Fabric Shade Table Lamp with Gold Base',
        img: 'assets/images/gaming1.jpg',
        price: '50',
        quantity: 1),
    Cart(
        title: 'Stylish Black Stripped Shirt long Shirt',
        img: 'assets/images/music1.jpg',
        price: '35',
        quantity: 1),
    Cart(
        title: 'Levis Jeans Jacket for Men',
        img: 'assets/images/shoes.jpg',
        price: '100',
        quantity: 1)
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(list.length);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'CheckOut'),
          child: Container(
            height: 50,
            color: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8.0)),
              child: Center(
                  child: Text(
                'Checkout',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          brightness: Brightness.dark,
          title: Text(
            'My Cart',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: listForCartProducts(),
      ),
    );
  }

  ListView listForCartProducts() {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return cartProducts(
              images: list[index].img,
              title: list[index].title,
              price: list[index].price,
              qty: list[index].quantity,
              index: index
              //index=index
              );
        });
  }

  Column cartProducts(
      {String images, String title, String price, int qty, int index}) {
    return Column(
      children: [
        Container(
          height: 130,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 90,
                margin: EdgeInsets.only(top: 18.0, bottom: 18.0, left: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey[200],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(list[index].img),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 18.0, left: 8.0, bottom: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right:8.0),
                                    child: Text('\$ ${price}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                  )))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Company: Denim'),
                      Spacer(),
                      Row(
                        children: [
                          // Container(
                          //   height: 20,
                          //   child: Row(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       Text(
                          //         '\$ $price',
                          //         style: TextStyle(
                          //             color: primaryColor,
                          //             fontWeight: FontWeight.bold,
                          //             fontSize: 16),
                          //       ),
                          //       SizedBox(
                          //         width: 2,
                          //       ),
                          //       Text(
                          //         '\$ 500',
                          //         style: TextStyle(
                          //           color: Colors.grey,
                          //           fontSize: 12,
                          //           decoration: TextDecoration.lineThrough,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          //  Spacer(),

                          //...................Increment,Decrement...............
                          // Container(
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(20.0),
                          //       border: Border.all(color: Colors.grey)),
                          //   child: Row(
                          //     children: [
                          //       SizedBox(
                          //         width: 5,
                          //       ),
                          //       GestureDetector(
                          //           onTap: () {
                          //             setState(() {
                          //               list[index].increment();
                          //             });
                          //           },
                          //           child: Icon(Icons.add)),
                          //       SizedBox(
                          //         width: 5,
                          //       ),
                          //       Text(qty.toString()),
                          //       SizedBox(
                          //         width: 5,
                          //       ),
                          //       GestureDetector(
                          //           onTap: () {
                          //             setState(() {
                          //               list[index].decrement();
                          //             });
                          //           },
                          //           child: Icon(Icons.remove)),
                          //       SizedBox(
                          //         width: 5,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    list[index].increment();
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                qty.toString(),
                                style: TextStyle(fontSize: 17),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    list[index].decrement();
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // borderRadius: BorderRadius.circular(20.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Icon(
                                    Icons.remove,
                                    size: 15,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                list.removeAt(index);
                                print('item remove');
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              color: primaryColor,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
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
    );
  }
}
