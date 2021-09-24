import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_ata_click/dialogs/advertisment_dialog.dart';
import 'package:shop_ata_click/dialogs/search_product_dialog.dart';
import 'package:shop_ata_click/models/banner_model.dart';
import 'package:shop_ata_click/screens/categories.dart';
import 'package:shop_ata_click/screens/product_categories_screen.dart';
import 'package:shop_ata_click/screens/profile.dart';
import 'package:shop_ata_click/screens/search_screen.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/widgets/cart_icon_widget.dart';
import 'package:shop_ata_click/widgets/custom_drawer.dart';

import 'favorites.dart';
import 'home.dart';

class Dashboard extends StatefulWidget {
  int page;
  Dashboard({this.page});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final PageStorageBucket bucket = PageStorageBucket();
  final globalKey = GlobalKey<ScaffoldState>();

  Widget currentScreen = Home();
  int selected = 1;
  String title;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = '';
    if (widget.page == 5) {
      currentScreen = Profile();
      selected = 5;
    }
    if (widget.page == 2) {
      currentScreen = Categories();
      selected = 2;
    }
    if (widget.page == 4) {
      currentScreen = Favorites();
      selected = 4;
    }
  }



  @override
  Widget build(BuildContext context) {
    if (Provider.of<Data>(context).showDil == true) {
      Future.delayed(
          Duration.zero,
          () => showDialog(
              context: context,
              builder: (BuildContext buildContext) {
                return AdvertismentDialog();
              }));
      Provider.of<Data>(context).showDil = false;
    }
    return SafeArea(
      child: Scaffold(
        key: globalKey,
        appBar: AppBar(
          leadingWidth: 40.0,
          leading: GestureDetector(
            onTap: () {
              print('open Draw');
              globalKey.currentState.openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(Icons.list),
            ),
          ),
          title: title == ''
              ? GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, 'SearchProducts');
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SearchProductsDialog();
                        });
                  },
                  child: Container(
                      height: 40.0,
                      margin: const EdgeInsets.only(
                          top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
                      //Same as `blurRadius` i guess
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              offset: Offset(2.0, 2.0), //(x,y)
                              blurRadius: 5,
                              spreadRadius: 0),
                        ],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.search,
                            color: primaryColor,
                          ),
                          Text(
                            '  Search Products',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      )),
                )
              : Text(
                  title,
                  style: TextStyle(color: Colors.black),
                ),
          actions: [
            //  SvgPicture.asset('assets/icons/cart.svg'),
            CartIcon(),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'Notifications');
              },
              child: Icon(
                Icons.notifications,
                size: 30,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        //  key: globalKey,
        drawer: CustomDrawer(),
        //appBar: CustomAppBar(),
        bottomNavigationBar: bottomContainer(),
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
      ),
    );
  }

  bottomContainer() {
    return BottomAppBar(
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 1;
                    currentScreen = Home();
                    title = '';
                  });
                },
                child: Image.asset('assets/icons/home.png',
                    height: 27,
                    color: selected == 1 ? primaryColor : Colors.grey)),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = 2;
                  currentScreen = ProductCategoriesScreenBody();
                  title = 'Categories';
                });
              },
              child: Image.asset(
                'assets/icons/catg.png',
                height: 27,
                color: selected == 2 ? primaryColor : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                title = 'Search';
                setState(() {
                  selected = 3;
                  currentScreen = Search();
                });
              },
              child: Image.asset(
                'assets/icons/search.png',
                height: 27,
                color: selected == 3 ? primaryColor : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  title = 'Wishlist';
                  selected = 4;
                  currentScreen = Favorites();
                });
              },
              child: Image.asset(
                'assets/icons/heart.png',
                height: 27,
                color: selected == 4 ? primaryColor : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  title = 'Profile';
                  selected = 5;
                  currentScreen = Profile();
                });
              },
              child: Image.asset(
                'assets/icons/user.png',
                height: 27,
                color: selected == 5 ? primaryColor : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  bool showDil = true;
}
