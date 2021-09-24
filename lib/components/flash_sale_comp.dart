import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

Container flashSaleComp(){
  List<String> imgs=['assets/images/gaming1.jpg','assets/images/camera1.jpg','assets/images/furniture1.jpg','assets/images/music1.jpg','assets/images/purse.jpg','assets/images/shoes.jpg','assets/images/sunglasses.jpg',];
  return   Container(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1 /1.4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 2,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: List.generate(
            6,
                (index) => Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.red,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                             imgs[index]))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12.0),
                                bottomLeft: Radius.circular(6.0))),
                        alignment: Alignment.center,
                        child: Text(
                          '-20%',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 15,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: primaryColor),
                  alignment: Alignment.center,
                  child: Text(
                    'Top Reviewed',
                    style: TextStyle(color: Colors.white,fontSize: 12),
                  ),
                ),
                SizedBox(height: 3,),
                Text('\$ 400.20',style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ))),
  );
}