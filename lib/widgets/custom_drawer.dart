import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_ata_click/screens/dashboard.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                height: 200,
                color: primaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        // print('dashboard');
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard(currentPage: 5)));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 75,
                            margin: EdgeInsets.only(left: 12, right: 6.0),
                            width: 75,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                //  borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/person4.jpg'))),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Chris Smith',
                            style: TextStyle(
                                //   color: drawerTextColor,
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            'info@email.com',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              drawerTile(
                  context: context,
                  title: 'My Profile',
                  // svgIconLoc: 'assets/icons/notifications.svg',
                  svg:'assets/icons/profile.svg',
                  args: 5,
                  routeName: 'Dashboard'),



              drawerTile(
                  context: context,
                  title: 'Notifications',
                  // svgIconLoc: 'assets/icons/notifications.svg',
                  svg:'assets/icons/notifications.svg',
                  routeName: 'Notifications'),

              drawerTile(
                  context: context,
                  title: 'My Cart',
                  // svgIconLoc: 'assets/icons/my_order.svg',
                  svg:'assets/icons/cart.svg',
                  routeName: 'MyCart'),
              drawerTile(
                  context: context,
                  title: 'My Orders',
                  //  svgIconLoc: 'assets/icons/my_order.svg',
                  svg:'assets/icons/order.svg',
                  routeName: 'MyOrders'),
              Divider(
                color: Colors.grey[400],
              ),

              drawerTile(
                  context: context,
                  title: 'Categories',
                  args: 2,
                  //   svgIconLoc: 'assets/icons/categories.svg',
                  svg:'assets/icons/categories.svg',
                  routeName: 'Dashboard'),
              drawerTile(
                  context: context,
                  title: 'WishList',
                  svg:'assets/icons/wishlist.svg',
                  args: 4,
                  //   svgIconLoc: 'assets/icons/favourite.svg',
                  routeName: 'Dashboard'),
              drawerTile(
                  context: context,
                  title: 'Brands',

                  /// svgIconLoc: 'assets/icons/brands.svg',
                  svg:'assets/icons/cart.svg',
                  routeName: 'Brands'),
              Divider(
                color: Colors.grey[400],
              ),
              //  Text('Application Preferences'),
              drawerTile(
                  context: context,
                  title: 'Help & FAQ\'s',
                  //  svgIconLoc: 'assets/icons/about_us.svg',
                  svg:'assets/icons/help.svg',
                  routeName: 'FAQ'),
              drawerTile(
                  context: context,
                  title: 'Contact Us',
                  svg:'assets/icons/contacts.svg',
                  //   svgIconLoc: 'assets/icons/logout.svg',
                  routeName: 'ContactUs'),

              drawerTile(
                  context: context,
                  title: 'Settings',
                  // svgIconLoc: 'assets/icons/setting.svg',
                  svg:'assets/icons/settings.svg',
                  routeName: 'EditProfile'),
              Divider(
                color: Colors.grey[400],
              ),
              drawerTile(
                  context: context,
                  title: 'Languages',
                  //   svgIconLoc: 'assets/icons/languages.svg',
                  svg:'assets/icons/languages.svg',
                  routeName: 'Languages'),


              drawerTile(
                  context: context,
                  title: 'Privacy Policy',
                  //  svgIconLoc: 'assets/icons/logout.svg',
                  svg:'assets/icons/privacy.svg',
                  routeName: 'PrivacyPolicy'),

              drawerTile(
                  context: context,
                  title: 'Logout',
                  // svgIconLoc: 'assets/icons/logout.svg',
                  svg:'assets/icons/signout.svg',
                  routeName: 'SignIn'),


              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  drawerTile(
      {context, String title, String svg, String routeName, int args}) {


    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, routeName, arguments: args);
      },
      child: Container(
        height: 40,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
           SvgPicture.asset(svg,height: 30,),
            // SvgPicture.asset(
            //   svgIconLoc,
            //   color: Colors.black54,
            // ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
