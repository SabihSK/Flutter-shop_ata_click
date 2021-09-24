import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  static double _lowerValue = 1000.0;
  static double _upperValue = 10000.0;
  RangeValues values = RangeValues(_lowerValue, _upperValue);
  List<bool> buttonLookingFor = [false, false];
  List<bool> isSelected = [false, true];
  List<bool> propertyType = [false, false, false, false, false, false];
  List<bool> isSelectedPropertyType = [false, true, true, true, true, true];

  // bool selectedColorForPropertyType1 = true;
  // bool selectedColorForPropertyType2 = false;
  bool selectedColorForPropertyType3 = false;
  List searchPropertyCategories = [true, true, true, true];
  List selectedSearchPropertyCategories = [false, false, false, false];

  List<bool> bedRooms = [
    true,
    false,
    false,
    false,
    false,
  ];
  List<bool> bedRoomsSelected = [true, true, true, true, true];
  List<bool> bathRooms = [
    true,
    false,
    false,
    false,
    false,
  ];
  List<bool> bathRoomsSelected = [true, true, true, true, true];
  int selectedView;
  List<String> Categories = ['Men', 'Shoes', 'Women', 'Electronics', 'Gaming'];
  List<bool> catListcheck = [false, false, false, false, false];
  List<String> sizes = ['S', 'M', 'L', 'XL', 'XXL'];
  List<bool> sizesCheck = [false, false, false, false, false];
  List<String> colors = ['Red', 'Green', 'Blue', 'Yellow', 'Grey'];
  List<bool> colorsCheck = [false, false, false, false, false];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bool forSaleSelected = false;
    bool forRentSelected = false;
    bool forBuySelected = false;
    selectedView = 0;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> propertyViews = [
      _residentialView(),
      _commercialView(),
      _industrialView()
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            'Filters',
            style: TextStyle(color: Colors.black),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: [
            Center(
                child: GestureDetector(
              onTap: () {
                for (int i = 1; i <= 4; i++) {
                  setState(() {
                    bedRoomsSelected[i] = true;
                    bathRoomsSelected[i] = true;
                  });
                }
                ;
              },
              child: Text(
                'Reset',
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                'Category',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            //......................1st list..................................
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        for (int i = 0; i <= 4; i++) {
                          catListcheck[i] = false;
                        }
                        setState(() {
                          catListcheck[index] = true;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          // height: 40,
                          width: 120,
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 50,
                          //width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: catListcheck[index]
                                      ? primaryColor
                                      : Colors.grey[400]),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            Categories[index],
                            style:
                                TextStyle(fontSize: 18, color: Colors.black38),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0,top: 8.0),
              child: Text(
                'Sizes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            //......................2nd list..................................
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        for (int i = 0; i <= 4; i++) {
                          sizesCheck[i] = false;
                        }
                        setState(() {
                          sizesCheck[index] = true;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          // height: 40,
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: sizesCheck[index]
                                      ? primaryColor
                                      : Colors.grey[400]),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            sizes[index],
                            style:
                                TextStyle(fontSize: 18, color: Colors.black38),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0,top: 8.0),
              child: Text(
                'Colors',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            //......................3rd list..................................
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        for (int i = 0; i <= 4; i++) {
                          colorsCheck[i] = false;
                        }
                        setState(() {
                          colorsCheck[index] = true;
                        });
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Container(
                          // height: 40,
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          height: 50,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                  color: colorsCheck[index]
                                      ? primaryColor
                                      : Colors.grey[400]),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            colors[index],
                            style:
                                TextStyle(fontSize: 18, color: Colors.black38),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //.....................Slider Text.........................
                  Row(
                    children: [
                      Text(
                        'PRICE RANGE',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '\$',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(values.start.truncateToDouble().toString(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        '    -   \$',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(values.end.truncateToDouble().toString(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 23,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(trackHeight: 2),
                    child: RangeSlider(
                      activeColor: primaryColor,
                      inactiveColor: Colors.grey,
                      min: _lowerValue,
                      max: _upperValue,
                      values: values,
                      onChanged: (val) {
                        print(val);
                        setState(() {
                          values = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'SeeAllScreen');
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 14, left: 8.0, right: 8.0),
                //  padding: EdgeInsets.symmetric(horizontal: 8.0),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primaryColor),
                child: Center(
                    child: Text(
                  'Apply',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }

  // _rowOfButtons() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 18.0),
  //     child: Row(
  //       children: [
  //         Expanded(
  //           child: GestureDetector(
  //             onTap: () {
  //               setState(() {
  //                 selectedView = 0;
  //                 selectedColorForPropertyType1 = true;
  //                 if (selectedColorForPropertyType2 == true ||
  //                     selectedColorForPropertyType3 == true) {
  //                   selectedColorForPropertyType3 = false;
  //                   selectedColorForPropertyType2 = false;
  //                 }
  //                 print(selectedView);
  //                 // if(selectedColorForPropertyType3==true||selectedColorForPropertyType2==true){
  //                 //   if (selectedColorForPropertyType2==true) {
  //                 //     selectedColorForPropertyType2=false;
  //                 //     if(selectedColorForPropertyType3==true){
  //                 //       selectedColorForPropertyType3=false;
  //                 //     }
  //                 //   }
  //                 // }
  //               });
  //             },
  //             child: Container(
  //               height: 40,
  //               decoration: BoxDecoration(
  //                   color: selectedColorForPropertyType1 == true
  //                       ? primaryColor
  //                       : Colors.white,
  //                   borderRadius: BorderRadius.circular(20.0),
  //                   border: Border.all(
  //                       color: selectedColorForPropertyType1 == true
  //                           ? primaryColor
  //                           : Colors.grey[300])),
  //               child: Center(
  //                 child: Text(
  //                   'Residential',
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       color: selectedColorForPropertyType1 == true
  //                           ? Colors.white
  //                           : Colors.black),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         Expanded(
  //           child: GestureDetector(
  //             onTap: () {
  //               setState(() {
  //                 selectedView = 1;
  //                 print(selectedView);
  //                 selectedColorForPropertyType2 = true;
  //                 if (selectedColorForPropertyType1 == true ||
  //                     selectedColorForPropertyType3 == true) {
  //                   selectedColorForPropertyType1 = false;
  //                   selectedColorForPropertyType3 = false;
  //                 }
  //                 // if(selectedColorForPropertyType3==true||selectedColorForPropertyType1==true){
  //                 //   if (selectedColorForPropertyType1==true) {
  //                 //     selectedColorForPropertyType1=false;
  //                 //     if(selectedColorForPropertyType3==true){
  //                 //       selectedColorForPropertyType3=false;
  //                 //     }
  //                 //   }
  //                 // }
  //               });
  //             },
  //             child: Container(
  //               height: 40,
  //               decoration: BoxDecoration(
  //                   color: selectedColorForPropertyType2 == true
  //                       ? primaryColor
  //                       : Colors.white,
  //                   borderRadius: BorderRadius.circular(20.0),
  //                   border: Border.all(
  //                       color: selectedColorForPropertyType2 == true
  //                           ? primaryColor
  //                           : Colors.grey[300])),
  //               child: Center(
  //                 child: Text(
  //                   'Commerical',
  //                   style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       color: selectedColorForPropertyType2 == true
  //                           ? Colors.white
  //                           : Colors.black),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //         SizedBox(
  //           width: 10,
  //         ),
  //         Expanded(
  //           child: GestureDetector(
  //             onTap: () {
  //               setState(() {
  //                 selectedView = 2;
  //                 print(selectedView);
  //                 selectedColorForPropertyType3 = true;
  //                 if (selectedColorForPropertyType2 == true ||
  //                     selectedColorForPropertyType1 == true) {
  //                   selectedColorForPropertyType1 = false;
  //                   selectedColorForPropertyType2 = false;
  //                 }
  //                 // if(selectedColorForPropertyType1==true||selectedColorForPropertyType2==true){
  //                 //   if (selectedColorForPropertyType1==true) {
  //                 //     selectedColorForPropertyType1=false;
  //                 //     if(selectedColorForPropertyType2==true){
  //                 //       selectedColorForPropertyType2=false;
  //                 //     }
  //                 //   }
  //                 // }
  //               });
  //             },
  //             child: Container(
  //               height: 40,
  //               width: 120,
  //               decoration: BoxDecoration(
  //                   color: selectedColorForPropertyType3 == true
  //                       ? primaryColor
  //                       : Colors.white,
  //                   borderRadius: BorderRadius.circular(20.0),
  //                   border: Border.all(
  //                       color: selectedColorForPropertyType3 == true
  //                           ? primaryColor
  //                           : Colors.grey[300])),
  //               child: Center(
  //                 child: Text('Industrial',
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.bold,
  //                       color: selectedColorForPropertyType3 == true
  //                           ? Colors.white
  //                           : Colors.black,
  //                     )),
  //               ),
  //             ),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  _residentialView() {
    return Container(
      height: 120,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, routeName)
                  setState(() {
                    selectedSearchPropertyCategories[0] =
                        !selectedSearchPropertyCategories[0];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[0] ==
                          searchPropertyCategories[0]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Residential',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[1] =
                        !selectedSearchPropertyCategories[1];
                    if (selectedSearchPropertyCategories[0] =
                        searchPropertyCategories[0]) {
                      selectedSearchPropertyCategories[0] =
                          !searchPropertyCategories[0];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[1] ==
                          searchPropertyCategories[1]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Commercial',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[2] =
                        !selectedSearchPropertyCategories[2];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[0] =
                          searchPropertyCategories[0]) {
                        selectedSearchPropertyCategories[0] =
                            !searchPropertyCategories[0];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[2] ==
                          searchPropertyCategories[2]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Upper portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[3] =
                        !selectedSearchPropertyCategories[3];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[0] =
                            searchPropertyCategories[0]) {
                          selectedSearchPropertyCategories[0] =
                              !searchPropertyCategories[0];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[3] ==
                          searchPropertyCategories[3]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lower portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }

  _commercialView() {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[2] =
                        !selectedSearchPropertyCategories[2];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[0] =
                          searchPropertyCategories[0]) {
                        selectedSearchPropertyCategories[0] =
                            !searchPropertyCategories[0];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[2] ==
                          searchPropertyCategories[2]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Upper portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[3] =
                        !selectedSearchPropertyCategories[3];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[0] =
                            searchPropertyCategories[0]) {
                          selectedSearchPropertyCategories[0] =
                              !searchPropertyCategories[0];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[3] ==
                          searchPropertyCategories[3]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lower portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, routeName)
                  setState(() {
                    selectedSearchPropertyCategories[0] =
                        !selectedSearchPropertyCategories[0];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[0] ==
                          searchPropertyCategories[0]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Residential',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[1] =
                        !selectedSearchPropertyCategories[1];
                    if (selectedSearchPropertyCategories[0] =
                        searchPropertyCategories[0]) {
                      selectedSearchPropertyCategories[0] =
                          !searchPropertyCategories[0];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[1] ==
                          searchPropertyCategories[1]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Commercial',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }

  _industrialView() {
    return Container(
      height: 120,
      margin: EdgeInsets.only(top: 10),
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[2] =
                        !selectedSearchPropertyCategories[2];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[0] =
                          searchPropertyCategories[0]) {
                        selectedSearchPropertyCategories[0] =
                            !searchPropertyCategories[0];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[2] ==
                          searchPropertyCategories[2]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Upper portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[1] =
                        !selectedSearchPropertyCategories[1];
                    if (selectedSearchPropertyCategories[0] =
                        searchPropertyCategories[0]) {
                      selectedSearchPropertyCategories[0] =
                          !searchPropertyCategories[0];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[1] ==
                          searchPropertyCategories[1]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Commercial',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSearchPropertyCategories[3] =
                        !selectedSearchPropertyCategories[3];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[0] =
                            searchPropertyCategories[0]) {
                          selectedSearchPropertyCategories[0] =
                              !searchPropertyCategories[0];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[3] ==
                          searchPropertyCategories[3]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Lower portion',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, routeName)
                  setState(() {
                    selectedSearchPropertyCategories[0] =
                        !selectedSearchPropertyCategories[0];
                    if (selectedSearchPropertyCategories[1] =
                        searchPropertyCategories[1]) {
                      selectedSearchPropertyCategories[1] =
                          !searchPropertyCategories[1];
                      if (selectedSearchPropertyCategories[2] =
                          searchPropertyCategories[2]) {
                        selectedSearchPropertyCategories[2] =
                            !searchPropertyCategories[2];
                        if (selectedSearchPropertyCategories[3] =
                            searchPropertyCategories[3]) {
                          selectedSearchPropertyCategories[3] =
                              !searchPropertyCategories[3];
                        }
                      }
                    }
                  });
                },
                child: CircleAvatar(
                  maxRadius: 36,
                  backgroundColor: selectedSearchPropertyCategories[0] ==
                          searchPropertyCategories[0]
                      ? primaryColor
                      : Colors.grey,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Residential',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              )
            ],
          ),
        ],
      ),
    );
  }
}
