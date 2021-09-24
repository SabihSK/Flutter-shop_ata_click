import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_ata_click/models/brands_model.dart';

class BrandsService {
  Future<BrandsModel> fetchBrands() async {
    http.Response response =
        await http.get(Uri.parse('http://shopataclick.com/api/brands'));
    var jsonDecoded = jsonDecode(response.body);
    return BrandsModel.fromJson(jsonDecoded);
  }
}
