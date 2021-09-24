import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var images_url = [
    'assets/images/apparel1.jpg',
    'assets/images/electronics1.jpg',
    'assets/images/gaming1.jpg',
    'assets/images/camera1.jpg',
    'assets/images/music1.jpg',
    'assets/images/furniture1.jpg',
    'assets/images/shoes.jpg',
    'assets/images/sunglasses.jpg'
  ];
  List<String> _title=['Stretchable Denim  Skinny Fit Jeans ','Blue color Shirt in frock style','Beige Fabric Shade Table Lamp with Gold Base','Stylish Black Stripped Shirt long Shirt','Levis Jeans Jacket for boys','UniWorth Shirt Collection for boys','High Grade Silver Flask','Boss Comfortable Chair high quality',];
  List<String> _price=['100.10','20,5000','45.00','29.50','100.10','20,5000','100.10','80.55'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.1;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              searchBar(),
              GridView.count(
                 physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: itemWidth/itemHeight ,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: List.generate(images_url.length, (index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'ProductDetails');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.grey[300])
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: itemHeight/1.5,
                            decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(images_url[index]))),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:4.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    _title[index],
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Icon(Icons.favorite_border,size: 20,)
                              ],
                              ),
                          ),
                          SizedBox(height: 2,),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:4.0),
                            child: Expanded(
                              child: Text(
                                '\$ ${_price[index]}',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:4.0),
                            child: Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.star,color: Colors.orange,size: 17,),Text('4.4'),Spacer(),
                                  Icon(Icons.add_shopping_cart,color: primaryColor,size: 20,),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 4,)
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }

  searchBar(){
    return Row(
      children: [
        SizedBox(width: 4.0,),
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
        SizedBox(width: 10,),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'Filters');
          },
          child: Container(
            padding: EdgeInsets.all(12.0),
            height: 50,width: 50,
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
            child: Image.asset('assets/icons/filter.png',color: primaryColor,),
          ),
        ),
        SizedBox(width: 10,)
      ],
    );
  }
}
