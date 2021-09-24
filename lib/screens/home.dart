import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shop_ata_click/components/categories.dart';
import 'package:shop_ata_click/components/flash_sale_comp.dart';
import 'package:shop_ata_click/components/home_components.dart';
import 'package:shop_ata_click/models/banner_model.dart';
import 'package:shop_ata_click/models/products_model.dart';
import 'package:shop_ata_click/provider/products_data_provider.dart';
import 'package:shop_ata_click/screens/product_details.dart';
import 'package:shop_ata_click/services/products_service.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
  List<String> _title = [
    'Stretchable Denim  Skinny Fit Jeans ',
    'Blue color Shirt in frock style',
    'Beige Fabric Shade Table Lamp with Gold Base',
    'Stylish Black Stripped Shirt long Shirt',
    'Levis Jeans Jacket for boys',
    'UniWorth Shirt Collection for boys',
    'High Grade Silver Flask',
    'Boss Comfortable Chair high quality',
  ];
  List<String> _price = [
    '100.10',
    '20,5000',
    '45.00',
    '29.50',
    '100.10',
    '20,5000',
    '100.10',
    '80.55'
  ];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  int newPage = 2;
  bool isLoading = false;
  List<Datum> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ProductService productService = ProductService();
    productService.fetchProducts(page: 1).then((value) {
      data = value.products.data;
      // print(data[0].title);
      setState(() {
        isLoading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    BannerModel bannerData = Provider.of<BannerModel>(context);
    var productsData = context.watch<ProductsDataProvider>().productData;
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.1;
    final double itemWidth = size.width / 2;
    return Scaffold(

        //    appBar: CustomAppBar(),
        body: isLoading
            ? SmartRefresher(
                controller: _refreshController,
                onRefresh: null,
                enablePullDown: false,
                enablePullUp: true,
                onLoading: () async {
                  //   int newPage=2;
                  ProductService productService = ProductService();
                  ProductsModel productData =
                      await productService.fetchProducts(page: newPage);
                  List<Datum> list = productData.products.data;

                  setState(() {
                    data.addAll(list);
                    _refreshController.loadComplete();
                    newPage++;
                  });
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bannerData == null
                          ? Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : Container(
                              height: 150.0,
                              margin: EdgeInsets.only(top: 18.0),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0)),
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Carousel(
                                  borderRadius: true,
                                  dotSize: 4.0,
                                  indicatorBgPadding: 6.0,
                                  images: List.generate(
                                      bannerData.banners.length,
                                      (index) => NetworkImage(
                                          'http://shopataclick.com/backend/images/banner/' +
                                              bannerData
                                                  .banners[index].image)))),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 18.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Special for you',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'See more',
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        height: 110,
                        child: specialForYouList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 16.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Featured Products',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'See more',
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                          height: 180,
                          // color: Colors.red,
                          child: featuredProductsList()),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 16.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Categories',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'See more',
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ),
                      ),
                      categories(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 16.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Flash Sale',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'See more',
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ),
                      ),
                      flashSaleComp(),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 16.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recommended for you',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'See more',
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Container(
                          height: 180,
                          // color: Colors.red,
                          child: featuredProductsList()),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8.0, top: 16.0, bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'More to Discover',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'See more',
                              style: TextStyle(color: Colors.grey[400]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 4.0),
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          childAspectRatio: itemWidth / itemHeight,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 15,
                          crossAxisCount: 2,
                          children: List.generate(data.length, (index) {
                            var baseUrl =
                                "http://shopataclick.com/backend/images/products/";
                            var images = data[index].productImage;
                            var name = data[index].name;
                            var price = data[index].regularPrice;
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductDetails(
                                              data: data[index],
                                            )));
                                print(data[index].productImage);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border:
                                        Border.all(color: Colors.grey[300])),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: itemHeight / 1.5,
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(8.0)),
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  baseUrl + images))),
                                    ),
                                    /*  SizedBox(
                            height: 10,
                          ),*/
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              name,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_border,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Text(
                                        '\$ $price',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.grey),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.orange,
                                            size: 17,
                                          ),
                                          Text('4.4'),
                                          Spacer(),
                                          Icon(
                                            Icons.add_shopping_cart,
                                            color: primaryColor,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Center(
                child: CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: primaryColor,
                  child: SpinKitRotatingCircle(
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ));
  }
}
