import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ata_click/screens/add_address.dart';
import 'package:shop_ata_click/screens/add_card.dart';
import 'package:shop_ata_click/screens/brands.dart';
import 'package:shop_ata_click/screens/card_details.dart';
import 'package:shop_ata_click/screens/categories_list.dart';
import 'package:shop_ata_click/screens/checkout.dart';
import 'package:shop_ata_click/screens/contactus.dart';
import 'package:shop_ata_click/screens/dashboard.dart';
import 'package:shop_ata_click/screens/editprofile.dart';
import 'package:shop_ata_click/screens/faq.dart';
import 'package:shop_ata_click/screens/filters.dart';
import 'package:shop_ata_click/screens/forgot_password.dart';
import 'package:shop_ata_click/screens/languages.dart';
import 'package:shop_ata_click/screens/my_cart.dart';
import 'package:shop_ata_click/screens/my_orders.dart';
import 'package:shop_ata_click/screens/notifications.dart';
import 'package:shop_ata_click/screens/onboaring.dart';
import 'package:shop_ata_click/screens/otp_screen.dart';
import 'package:shop_ata_click/screens/payment_successful.dart';
import 'package:shop_ata_click/screens/privacy_policy.dart';
import 'package:shop_ata_click/screens/product_categories_screen.dart';
import 'package:shop_ata_click/screens/product_details.dart';
import 'package:shop_ata_click/screens/profile.dart';
import 'package:shop_ata_click/screens/search_products.dart';
import 'package:shop_ata_click/screens/settings.dart';
import 'package:shop_ata_click/screens/shipping_address.dart';
import 'package:shop_ata_click/screens/sign_in.dart';
import 'package:shop_ata_click/screens/splash.dart';
import 'package:shop_ata_click/screens/track_your_order.dart';
import 'package:shop_ata_click/screens/transaction_history.dart';

class RouteGenerator {
 static Route<dynamic> generateRoute(RouteSettings settings){

   final args=settings.arguments;
   switch(settings.name){
     case '/':
       return MaterialPageRoute(builder: (context)=>Splash());
     case 'SignIn':
       return MaterialPageRoute(builder: (context)=>SignIn());
     case 'ForgotPassword':
       return MaterialPageRoute(builder: (context)=>ForgotPassword());
     case 'OtpScreen':
       return MaterialPageRoute(builder: (context)=>OtpScreen());
     case 'Dashboard':
       var data=settings.arguments;
       return MaterialPageRoute(builder: (context)=>Dashboard(page: data,));
     case 'Notifications':
       return MaterialPageRoute(builder: (context)=>Notifications());
     case 'EditProfile':
       return MaterialPageRoute(builder: (context)=>EditProfile());
     case 'MyCart':
       return MaterialPageRoute(builder: (context)=>MyCart());
     case 'Languages':
       return MaterialPageRoute(builder: (context)=>Languages());
     case 'SearchProducts':
       return MaterialPageRoute(builder: (context)=>SearchProducts());
     case 'CategoriesList':
       return MaterialPageRoute(builder: (context)=>CategoriesList());
     case 'Filters':
       return MaterialPageRoute(builder: (context)=>Filters());
     case 'ProductDetails':
       return MaterialPageRoute(builder: (context)=>ProductDetails());
     case 'FAQ':
       return MaterialPageRoute(builder: (context)=>FAQ());
     case 'Profile':
       return MaterialPageRoute(builder: (context)=>Profile());
     case 'AddAddress':
       return MaterialPageRoute(builder: (context)=>AddAddress());
     case 'MyOrders':
       return MaterialPageRoute(builder: (context)=>MyOrders());
     case 'ShippingAddress':
       return MaterialPageRoute(builder: (context)=>ShippingAddress());
     case 'ContactUs':
       return MaterialPageRoute(builder: (context)=>ContactUs());
     case 'Settings':
       return MaterialPageRoute(builder: (context)=>Settings());
     case 'PrivacyPolicy':
       return MaterialPageRoute(builder: (context)=>PrivacyPolicy());
     case 'PrivacyPolicy':
       return MaterialPageRoute(builder: (context)=>PrivacyPolicy());
     case 'CheckOut':
       return MaterialPageRoute(builder: (context)=>CheckOut());
     case 'CardDetails':
       return MaterialPageRoute(builder: (context)=>CardDetails());
     case 'AddCard':
       return MaterialPageRoute(builder: (context)=>AddCard());
     case 'PaymentSuccessful':
       return MaterialPageRoute(builder: (context)=>PaymentSuccessful());
     case 'OnBoarding':
       return MaterialPageRoute(builder: (context)=>OnBoarding());
     case 'TransactionHistory':
       return MaterialPageRoute(builder: (context)=>TransactionHistory());
     case 'Brands':
       return MaterialPageRoute(builder: (context)=>Brands());
     case 'ProductCategoriesScreen':
       return MaterialPageRoute(builder: (context)=>ProductCategoriesScreenBody());
     case 'TrackYourOrder':
       return MaterialPageRoute(builder: (context)=>TrackYourOrder());



   }
 }


}