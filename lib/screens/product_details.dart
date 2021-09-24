import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ata_click/models/products_model.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/widgets/custom_button.dart';

class ProductDetails extends StatefulWidget {
  Datum data;

  ProductDetails({this.data});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    ProductsModel productsData = Provider.of<ProductsModel>(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
            title: 'Add to Cart',
            callback: () {},
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Product Details',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: double.infinity,
                  child: Carousel(
                    // borderRadius: true,
                    boxFit: BoxFit.cover,
                    dotSize: 4.0,
                    dotBgColor: Colors.transparent,
                    indicatorBgPadding: 8.0,
                    // images: [
                    //   NetworkImage(
                    //       'https://www.arzaan.pk/wp-content/uploads/2019/05/Montre-Homme-2019-New-Hot-Sell-Brand-WoMaGe-Wrist-Watch-Luxury-Unique-Style-Men-Quartz-Watches.jpg_640x640.jpg'),
                    //   ExactAssetImage('assets/images/tissot1.jpg'),
                    //   ExactAssetImage('assets/images/tissot2.jpg'),
                    // ],
                    images: List.generate(
                        widget.data.productGrallery.length,
                        (index) => Image.network(
                              widget.data.productGrallery == null
                                  ? productsData.galleryImageUrl +widget.data.productImage
                                  : productsData.galleryImageUrl +
                                      widget.data.productGrallery[index].image,
                              fit: BoxFit.cover,
                            )),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    priceSection(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.data.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Description',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Text(widget.data.metaDescription ?? 'Null'),
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    //   child: Text(
                    //     'Colors',
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.bold, fontSize: 18),
                    //   ),
                    // ),
                    //   ColorRange(),
                    //    Padding(
                    //      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    //      child: Text(
                    //        'Size',
                    //        style: TextStyle(
                    //            fontWeight: FontWeight.bold, fontSize: 18),
                    //      ),
                    //    ),
                    //    SizeRange(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        'Quantity',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    quantitySelector(),

                    SizedBox(
                      height: 20,
                    ),
                    //......................Reviews.....................
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'Write a review',
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          '4.5 ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22.0),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.orange,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    reviewByPeople(
                        name: 'John Doe',
                        date: '22 May, 2020',
                        rating: 4.5,
                        comment:
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum'),
                    SizedBox(
                      height: 15,
                    ),
                    reviewByPeople(
                        name: 'Mary Smith',
                        date: '24 June, 2020',
                        rating: 4.2,
                        comment:
                            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  priceSection() {
    return Container(
      height: 30,
      child: Row(
        children: [
          Text(
            '\$ ${widget.data.regularPrice}',
            style: TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            width: 10,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Text(
                widget.data.salePrice == null
                    ? ''
                    : '\$ ${widget.data.salePrice}',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough),
              )),
          Spacer(),
          Icon(
            Icons.favorite,
            color: primaryColor,
          )
        ],
      ),
    );
  }

  quantitySelector() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              qty++;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            maxRadius: 17,
            child: CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.add),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(qty.toString()),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            if (qty < 1) {
              return;
            }
            setState(() {
              qty--;
            });
          },
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            maxRadius: 17,
            child: CircleAvatar(
              maxRadius: 16,
              backgroundColor: Colors.white,
              child: Icon(Icons.remove),
            ),
          ),
        ),
      ],
    );
  }

  reviewByPeople({String name, String date, double rating, String comment}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              date,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          rating.toString(),
          style: TextStyle(
              color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          comment,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
