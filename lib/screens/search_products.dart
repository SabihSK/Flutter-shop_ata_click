import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
class SearchProducts extends StatefulWidget {
  @override
  _SearchProductsState createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,

        //  title: Text('Location'),
        title: Text('Select Products',style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Container(
            height: 50.0,
            margin: const EdgeInsets.only(top: 8.0,left:8.0,right: 8.0,bottom: 8.0),
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
            child: TextFormField(
              //  obscureText: widget.hint=='Please enter your password'?true:false,
              //keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                  ),
                  hintText: 'Search Products',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  // contentPadding: EdgeInsets.only(left: 10.0,top: 10.0,right: 0.0,bottom: 0.0),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, bottom: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.pin_drop,
                  color: Colors.grey,
                ),
                Text(
                  'Current Location',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                )
              ],
            ),
          ),

          //..............Choose Region...................
          Container(
            height: 20,
            padding: EdgeInsets.only(left: 14.0),
            width: double.infinity,
            color: Colors.grey[300],
            child: Align(
                alignment: Alignment.centerLeft, child: Text('Choose Products')),
          ),
          SizedBox(height: 8,),

          //.................List of Countries.......................
          Expanded(
              child: citiesList()
          )
        ],
      ),
    );
  }

  citiesList(){
//  List<String> countries=['Pakistan','China','India','Brazil','Mexico','Egypt','Italy','Myanmar','Algeria','Canada','Mozambique','Cameroon','Mali','Zambia','Syria','Senegal'];
    List<String> countries1=['Automobiles','Electronics','Gaming','Household Products','Cleaning','Apparels','Cutleries','Algeria','Canada','Mozambique','Cameroon','Mali','Zambia','Syria','Senegal'];
    return ListView.builder(itemCount: countries1.length,itemBuilder: (context, index) {
      return Container(
        height: 45,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 4),
              child: Text(
                countries1[index],
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            Spacer(),
            Divider()
          ],
        ),
      );
    }) ;
  }
}
