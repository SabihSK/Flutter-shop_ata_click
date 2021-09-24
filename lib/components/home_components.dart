import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

Container topBar() {
  return Container(
    color: Colors.white,
    height: 56,
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 3,
          child: Container(
            height: 50.0,
            margin: const EdgeInsets.only(top: 8.0),
            //Same as `blurRadius` i guess
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(2.0, 2.0), //(x,y)
                    blurRadius: 5,
                    spreadRadius: 0),
              ],
            ),
            child: TextFormField(
              //  obscureText: widget.hint=='Please enter your password'?true:false,
              //keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  hintText: 'Search Products',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  // contentPadding: EdgeInsets.only(left: 10.0,top: 10.0,right: 0.0,bottom: 0.0),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Stack(
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.only(top: 8.0),
              child: Container(
                height: 50.0,
                width: 50.0,
                //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[300],
                        offset: Offset(2.0, 2.0), //(x,y)
                        blurRadius: 5,
                        spreadRadius: 0),
                  ],
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
                right: 0,
                child: CircleAvatar(
                  maxRadius: 10,
                  child: Text(
                    '5',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: primaryColor,
                ))
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Container(
            height: 50.0,
            width: 50.0,
            margin: const EdgeInsets.only(top: 8.0),
            //Same as `blurRadius` i guess
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[300],
                    offset: Offset(2.0, 2.0), //(x,y)
                    blurRadius: 5,
                    spreadRadius: 0),
              ],
            ),
            child: Icon(
              Icons.notifications,
              size: 35,
              color: Colors.grey,
            )),
        SizedBox(
          width: 10,
        ),
      ],
    ),
  );
}

// homeBanner(var bannerData) {
//
//   print(bannerData);
//   return Container(
//       height: 150.0,
//       margin: EdgeInsets.only(top: 18.0),
//       width: double.infinity,
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
//       padding: EdgeInsets.symmetric(horizontal: 8.0),
//       child: Carousel(
//         borderRadius: true,
//         dotSize: 4.0,
//         indicatorBgPadding: 8.0,
//         images: [
//           AssetImage('assets/images/banner1.png'),
//           AssetImage('assets/images/banner2.png'),
//           AssetImage('assets/images/banner3.png'),
//         ],
//       ));
// }

specialForYouList() {
  List<String> images = [
    'assets/images/mens_clothing.jpg',
    'assets/images/phone_accessories.jpg',
    'assets/images/ladies_accessories.jpg',
    'assets/images/mens_clothing.jpg',
    'assets/images/phone_accessories.jpg',
  ];
  List<String> categories = [
    'Men\'s Clothing',
    'Phones and Accessories',
    'Ladies Accessories',
    'Men\'s Clothing',
    'Phones and Accessories'
  ];
  return ListView.builder(
      itemCount: images.length + 1,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                width: 8.0,
              )
            : Container(
                //height: 110,
                width: 210,
                margin: EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    //   color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(images[index - 1]))),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.black26,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      categories[index - 1],
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              );
      });
}

featuredProductsList() {
  List<String> images = [
    'assets/images/shoes.jpg',
    'assets/images/sunglasses.jpg',
    'assets/images/purse.jpg',
    'assets/images/shoes.jpg',
    'assets/images/sunglasses.jpg',
  ];
  List<String> categories = [
    'Men\'s Sport Shoes',
    'Rayban Shades',
    'Ladies Handbags',
    'High Quality Shoes',
    'Rayban Shades'
  ];
  return ListView.builder(
      itemCount: images.length + 1,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return index == 0
            ? SizedBox(
                width: 8.0,
              )
            : Column(
                children: [
                  Container(
                    height: 110,
                    width: 110,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(18.0)),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: primaryColor,
                            ))
                      ],
                    ),
                    //  height: double.infinity,
                    margin: EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      image:
                          DecorationImage(image: AssetImage(images[index - 1])),
                      //de   color: Colors.yellowAccent,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(2.0, 2.0), //(x,y)
                            blurRadius: 5,
                            spreadRadius: 0),
                      ],
                      //   color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 110,
                    padding: EdgeInsets.only(right: 4.0),
                    height: 35,
                    child: Text(
                      categories[index - 1],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    width: 110,
                    //padding: EdgeInsets.all(8.0),
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$23.55',
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$25.00',
                          style: TextStyle(
                              color: Colors.grey[400],
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  )
                ],
              );
      });
}
