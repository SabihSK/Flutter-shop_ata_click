import 'package:flutter/material.dart';

import '../utils/color_scheme.dart';

class Notifications extends StatelessWidget {
  List<String> images = [
    'assets/images/apparel1.jpg',
    'assets/images/furniture1.jpg',
    'assets/images/gaming1.jpg',
    'assets/images/shoes.jpg',
    'assets/images/watch1.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            brightness: Brightness.dark,
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              // CartIconWidget(),
              SizedBox(
                width: 15,
              )
            ],
          ),
          body: Column(
            children: [
              // Divider(color: Colors.transparent,),
              Expanded(child: notifications())
            ],
          )),
    );
  }

  notifications() {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(margin: EdgeInsets.only(left:8.0,right: 8.0,top: 8.0),
                child: Container(
                  height: 120,
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Container(
                          height: 90,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(images[index])),
                          )),
                      Expanded(
                        child: Container(
                          height: 90,
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Georgio Armani', style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                              Row(
                                children: [
                                  Text('Avail Upto', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13)),
                                  Text(' 25%', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,color: primaryColor)),
                                ],
                              ),

                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Text(
                                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots.',
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 13),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 16,
                                  ), Icon(
                                    Icons.star_border,
                                    color: Colors.orange,
                                    size: 16,
                                  ), Icon(
                                    Icons.star_border,
                                    color: Colors.orange,
                                    size: 16,
                                  ),
                                  Text(' (4.3)')
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // color: Colors.red,
                ),
              ),

            ],
          );
        });
  }
}
