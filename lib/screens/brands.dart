import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:shop_ata_click/components/my_appbar.dart';
import 'package:shop_ata_click/models/brands_model.dart';
import 'package:shop_ata_click/services/brands_service.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class Brands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BrandsService brandsService = BrandsService();
    return FutureProvider(
      create: (context) => brandsService.fetchBrands(),
      catchError: (context, error) {
        print(error.toString());
      },
      initialData: null,
      child: BrandsBody(),
    );
  }
}

class BrandsBody extends StatelessWidget {
  List<String> brandsImg = [
    'assets/icons/apple_logo.png',
    'assets/icons/borjan_logo.png',
    'assets/icons/jdot_logo.png',
    'assets/icons/samsung_logo.png',
    'assets/icons/apple_logo.png',
    'assets/icons/borjan_logo.png',
    'assets/icons/jdot_logo.png',
    'assets/icons/samsung_logo.png',
    'assets/icons/apple_logo.png',
    'assets/icons/borjan_logo.png',
    'assets/icons/jdot_logo.png',
    'assets/icons/samsung_logo.png',
    'assets/icons/apple_logo.png',
    'assets/icons/borjan_logo.png',
    'assets/icons/jdot_logo.png',
    'assets/icons/samsung_logo.png',
  ];

  // List<String> names = [
  //   'Apple',
  //   'Borjan',
  //   'J.',
  //   'Samsung',
  //   'Apple',
  //   'Borjan',
  //   'J.',
  //   'Samsung',
  //   'Apple',
  //   'Borjan',
  //   'J.',
  //   'Samsung',
  //   'Apple',
  //   'Borjan',
  //   'J.',
  //   'Samsung'
  // ];

  @override
  Widget build(BuildContext context) {
    BrandsModel brandsData = Provider.of<BrandsModel>(context);
    // List<Datum> data = brandsData.brands.data;
    // print(data);
    return Scaffold(
        appBar: myAppbar(title: 'Brands'),
        body: brandsData == null
            ? Center(
                child: CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: primaryColor,
                  child: SpinKitRotatingCircle(
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              )
            : GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                    brandsData.brands.data.length,
                    (index) => Column(
                          children: [
                            Container(
                              height: 81,
                              padding: EdgeInsets.all(1.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  // image: DecorationImage(
                                  //     image: AssetImage())
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.network(brandsData
                                              .brands.data[index].image ==
                                          ''
                                      ? 'https://thumbs.dreamstime.com/b/no-image-available-icon-photo-camera-flat-vector-illustration-132483097.jpg'
                                      : brandsData.brands.data[index].image),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(brandsData.brands.data[index].title)
                          ],
                        )),
              ));
  }
}
