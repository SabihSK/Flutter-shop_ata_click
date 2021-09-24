import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_ata_click/models/categories_model.dart';
import 'package:shop_ata_click/utils/constants.dart';

class CategoriesService {
  Future<CategoriesModel> fetchCategories(int page) async {
    http.Response response =
        await http.get(Uri.parse(categoriesApiKey + '$page'));
    var jsonDecoded = jsonDecode(response.body);
    return CategoriesModel.fromJson(jsonDecoded);
  }
}
