import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shop_ata_click/models/banner_model.dart';
import 'package:shop_ata_click/utils/constants.dart';

class BannerService {
  Future<BannerModel> fetchBanners() async {
    http.Response response = await http.get(Uri.parse(bannerApiKey));
    var jsonDecoded = jsonDecode(response.body);
    return BannerModel.fromJson(jsonDecoded);
  }
}
