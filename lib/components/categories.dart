import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

categories(){
  return   Container(
    height: 220,
    //         color: Colors.yellow,
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: featureProducts(
                    title: 'Gaming',
                    urlImg: 'assets/images/gaming1.jpg',
                    lowerContainerColor: primaryColor),
              ),
              SizedBox(
                height: 3,
              ),
              Expanded(
                child: featureProducts(
                  title: 'Apparel',
                  urlImg: 'assets/images/apparel1.jpg',
                  lowerContainerColor: primaryColor,
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: featureProducts(
                    title: 'Furniture',
                    urlImg: 'assets/images/furniture1.jpg',
                    lowerContainerColor: primaryColor),
              ),
              SizedBox(
                height: 3,
              ),
              Expanded(
                child: featureProducts(
                    title: 'Accessories',
                    urlImg: 'assets/images/purse.jpg',
                    lowerContainerColor: primaryColor),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: featureProducts(
                    title: 'Watches',
                    urlImg: 'assets/images/watch1.jpg',
                    lowerContainerColor: primaryColor),
              ),
              SizedBox(
                height: 3,
              ),
              Expanded(
                child: featureProducts(
                    title: 'Electronics',
                    urlImg: 'assets/images/electronics1.jpg',
                    lowerContainerColor: primaryColor),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: featureProducts(
                    title: 'Cameras',
                    urlImg: 'assets/images/camera1.jpg',
                    lowerContainerColor: primaryColor),
              ),
              SizedBox(
                height: 3,
              ),
              Expanded(
                child: featureProducts(
                    title: 'Music',
                    urlImg: 'assets/images/music1.jpg',
                    lowerContainerColor: primaryColor),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}





Container featureProducts(
    {String urlImg, String title, Color lowerContainerColor}) {
  return Container(
    padding: EdgeInsets.only(left: 4.0, right: 4.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      children: [
        Container(height: 85,
          decoration: BoxDecoration(
            // color: Colors.red,
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(urlImg))),
        ),
        Container(
          width: double.infinity,height: 20,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(8.0)),
          ),
          child: Center(
            child: Text(
              title,maxLines: 1,overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}