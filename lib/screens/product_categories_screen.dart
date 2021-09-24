import 'package:flutter/material.dart';
import 'package:shop_ata_click/screens/categories_side_list.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';



class ProductCategoriesScreenBody extends StatefulWidget {
  @override
  _ProductCategoriesScreenBodyState createState() =>
      _ProductCategoriesScreenBodyState();
}

class _ProductCategoriesScreenBodyState
    extends State<ProductCategoriesScreenBody> {
  bool visibility1 = false;
  bool visibility2 = false;
  bool visibility3 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: myAppbar(title: 'Catgories'),
        body: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.3,
              // color: Colors.red,
              child: CategoriesSideList(),
            ),
            Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Column(
                  children: [
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        // height: 500,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  visibility1 = !visibility1;
                                });
                              },
                              child: Container(
                                height: 30,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Ladies Bag',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(Icons.arrow_drop_down_sharp)
                                  ],
                                ),
                              ),
                            ),
                            Divider(),
                            Visibility(
                              visible: visibility1,
                              child: visibilityTile(),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  visibility2 = !visibility2;
                                });
                              },
                              child: Container(
                                height: 30,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Gents Bag',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(Icons.arrow_drop_down_sharp)
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: visibility2,
                              child: visibilityTile(),
                            ),
                            Divider(),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  visibility3 = !visibility3;
                                });
                              },
                              child: Container(
                                height: 30,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Travelling Bag',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(Icons.arrow_drop_down_sharp)
                                  ],
                                ),
                              ),
                            ),
                            Visibility(
                              visible: visibility3,
                              child: visibilityTile(),
                            )
                          ],
                        ),
                        width: double.infinity,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  visibilityTile() {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: primaryColor,
                ),
                Text(
                  '  Hand Bag',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: primaryColor,
                ),
                Text(
                  '  Hobo Bag',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 40,
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: primaryColor,
                ),
                Text(
                  '  Duffle Bag',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
