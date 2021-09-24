import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
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
  //List<String> _price=['20.00','12.22','10.00','25.00','30.35','28.55'];

  List<String> _price=['100.10','20,5000','45.00','29.50','100.10','20,5000','100.10','80.55'];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.1;
    final double itemWidth = size.width / 2;
    return Padding(
      padding: const EdgeInsets.only(top:8.0,left: 4.0,right: 4.0),
      child:GridView.count(
   //   physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: itemWidth/itemHeight ,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: List.generate(images_url.length, (index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey[300])
                ),

                child: Stack(
                  children: [
                    Column(
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
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [starRatings(),SvgPicture.asset('assets/icons/cart.svg',height: 20,color: Colors.black,)],
                        // )
                      ],
                    ),
                    // Positioned(
                    //   top: 10,
                    //   left: itemWidth-35,
                    //   //left:3,
                    //   child: HeartWidget(),
                    // )
                  ],
                ),
              ),
              Positioned(right: 5,top: 5,child: CircleAvatar(backgroundColor: Colors.white,maxRadius: 13,child: Icon(Icons.favorite,size: 20,color: primaryColor,)))
            ],
          );
        }),
      ),
    );
  }
}
