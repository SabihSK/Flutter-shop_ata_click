import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shop_ata_click/screens/dashboard.dart';
import 'package:shop_ata_click/services/banner_service.dart';
import 'package:shop_ata_click/services/products_service.dart';

import 'config/routes.dart';
import 'provider/products_data_provider.dart';

void main() {
  BannerService bannerService = BannerService();
  ProductService productService = ProductService();
  List<SingleChildWidget> providers = [
    ChangeNotifierProvider<Data>(create: (_) => Data()),
    ChangeNotifierProvider<ProductsDataProvider>(
        create: (_) => ProductsDataProvider()),
    FutureProvider(
      create: (context) => bannerService.fetchBanners(),
      catchError: (context, error) {
        print(error.toString());
      },
      initialData: null,
    ),
    FutureProvider(
      create: (context) => productService.fetchProducts(),
      catchError: (context, error) {
        print(error.toString());
      },
      initialData: null,
    )
  ];
  runApp(MultiProvider(providers: providers, child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            textTheme: TextTheme(),
            iconTheme: IconThemeData(color: Colors.grey),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute);
  }
}

// home: Filters(),
//  routes: {
//    '/':(context)=>Splash(),
//    'ForgotPassword':(context)=>ForgotPassword(),
//    'OtpScreen':(context)=>OtpScreen(),
//    'Dashboard':(context)=>Dashboard(),
//  //  'Home2':(context)=>Home2(),
//    'Notifications':(context)=>Notifications(),
//    'EditProfile':(context)=>EditProfile(),
//    'MyCart':(context)=>MyCart(),
//    'Languages':(context)=>Languages(),
//    'SearchProducts':(context)=>SearchProducts(),
//    'CategoriesList':(context)=>CategoriesList(),
//    'Filters':(context)=>Filters(),
//    'ProductDetails':(context)=>ProductDetails(),
//    'FAQ':(context)=>FAQ(),
//    'Profile':(context)=>Profile(),
//    'AddAddress':(context)=>AddAddress(),
//    'MyOrders':(context)=>MyOrders(),
//    'ShippingAddress':(context)=>ShippingAddress(),
//    'Settings':(context)=>Settings(),
//    'ContactUs':(context)=>ContactUs(),
//    'PrivacyPolicy':(context)=>PrivacyPolicy(),
//    'CheckOut':(context)=>CheckOut(),
//    'CardDetails':(context)=>CardDetails(),
//    'AddCard':(context)=>AddCard(),
//    'PaymentSuccessful':(context)=>PaymentSuccessful()
//  },


//edited:3:16