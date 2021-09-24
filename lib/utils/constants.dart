import 'package:flutter/material.dart';

BoxShadow appBoxShadow = BoxShadow(
    color: Colors.grey[300],
    offset: Offset(2.0, 2.0), //(x,y)
    blurRadius: 5,
    spreadRadius: 0);

final String categoriesApiKey = 'http://shopataclick.com/api/categories?page=';

final String bannerApiKey = 'http://shopataclick.com/api/banners';

final String productsApiKey = 'http://shopataclick.com/api/products?page=';
