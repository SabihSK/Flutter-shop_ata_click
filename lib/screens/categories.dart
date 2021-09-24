import 'package:flutter/material.dart';
import 'package:shop_ata_click/screens/categories_list.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class Categories extends StatelessWidget {
  List<String> images = [
    'assets/images/mens_clothing.jpg',
    'assets/images/phone_accessories.jpg',
    'assets/images/ladies_accessories.jpg',
    'assets/images/sunglasses.jpg',
    'assets/images/purse.jpg',
  ];
  List<String> categories = [
    'Men\'s Clothing',
    'Phones and Accessories',
    'Ladies Accessories',
    'Shades',
    'Handbags'
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4;
    final double itemWidth = size.width / 2;
    return Scaffold(
    //   appBar: AppBar(elevation: 0,
    //   backgroundColor: Colors.white,centerTitle: true,
    //   title: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
    // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50.0,
                    margin: const EdgeInsets.only(top: 8.0,left:0.0,right: 0.0,bottom: 18.0),
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
                      decoration: InputDecoration(contentPadding: EdgeInsets.all(15.0),
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

              ],
            ),
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 1.5,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(5, (index) {
                  return GestureDetector(
                    onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesList(categoryType: categories[index],))),
                    child: Container(
                      //height: 110,
                      width: 210,
                      margin: EdgeInsets.only(right: 0.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          //   color: Colors.red,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(images[index]))),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black26,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            categories[index],
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
