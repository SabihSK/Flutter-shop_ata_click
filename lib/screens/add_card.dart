import 'package:flutter/material.dart';
import 'package:shop_ata_click/components/my_appbar.dart';
import 'package:shop_ata_click/widgets/custom_button.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';

class AddCard extends StatefulWidget {
  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:   myAppbar(title: 'Add Card'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: CustomTextField(hint: 'Bank Name',),
                ),
                SizedBox(height: 10,),
                CustomTextField(hint:'Card Number',keyboardType: TextInputType.number,),
                SizedBox(height: 10,),
                CustomTextField(hint:'Expiry Month',keyboardType: TextInputType.number,),
                SizedBox(height: 10,),
                CustomTextField(hint:'Expiry Year',keyboardType: TextInputType.number,),
                SizedBox(height: 10,),
                CustomTextField(hint:'Card Holder Name',keyboardType: TextInputType.number,),

                SizedBox(height: 30,),
                CustomButton(title: 'Add',callback: (){},)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
