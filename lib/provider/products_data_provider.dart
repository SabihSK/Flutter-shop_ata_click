import 'package:flutter/material.dart';
import 'package:shop_ata_click/services/products_service.dart';

class ProductsDataProvider extends ChangeNotifier {
  var productData;
  productDataFunction() async {
    productData = await ProductService().fetchProducts(page: 1);
  }
}
