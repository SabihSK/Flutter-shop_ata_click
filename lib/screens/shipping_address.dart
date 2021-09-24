import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/utils/constants.dart';

class ShippingAddress extends StatefulWidget {
  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  List<bool> _checked=[true,false,false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Shipping Address',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'AddAddress');
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(
                'Your Shipping Address',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),

              SizedBox(
                height: 20,
              ),
              Expanded(
                child:  listforShippingAddress(),
              )
            ],
          ),
        ),
      ),
    );
  }
  listforShippingAddress(){
    return ListView.builder(itemCount: 3,itemBuilder: (context,index){
      return   GestureDetector(
        onTap: (){
          for(int i=0;i<=_checked.length-1;i++){
            setState(() {
              _checked[i]=false;
            });
          }
        setState(() {
          _checked[index]=true;
        });
        },
        child: Container(
          height: 150,
          margin: EdgeInsets.only(bottom: 12.0,),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color:_checked[index]?primaryColor:Colors.transparent),
              boxShadow: [appBoxShadow]),
          child: Row(
            children: [
              Expanded(
                flex:1,
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/icons/location.png',
                      color: primaryColor,
                      height: 25,
                    )),
              ),
              Expanded(flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe, +961-12345678',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(height: 5,),
                      Container(child: Text('School Street Behind the official School, Magdouche',maxLines: 3,style: TextStyle(fontSize: 16),))
                      ,
                      Spacer(),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: primaryColor),
                            child: Text(
                              'Edit',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Icon(Icons.delete)
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ) ;
    });
  }
}
