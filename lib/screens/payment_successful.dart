import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/widgets/custom_button.dart';


class PaymentSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.25,),
              CircleAvatar(maxRadius: 60,backgroundColor: primaryColor,child: Icon(Icons.done,size: 100,color: Colors.white,),),
              SizedBox(height: 10,),
              Text('Payment Successful!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:38.0),
                child: Text('Your order will be processed and sent to you as soon as possible',textAlign: TextAlign.center,),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  title: 'Continue Shopping',
                  callback: (){
                    Navigator.pushNamed(context, 'Dashboard');
                  },
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomButton(
                  title: 'Track Your Order',
                  callback: (){
                    Navigator.pushNamed(context, 'TrackYourOrder');
                  },
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
