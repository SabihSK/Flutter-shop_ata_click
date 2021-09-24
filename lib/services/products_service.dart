import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_ata_click/models/products_model.dart';
import 'package:shop_ata_click/utils/constants.dart';

class ProductService {
  Future<ProductsModel> fetchProducts({int page}) async {
    try {
      var request =
          http.Request('GET', Uri.parse(productsApiKey + page.toString()));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return productsModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
