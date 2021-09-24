import 'package:flutter/material.dart';
import 'package:shop_ata_click/widgets/custom_button.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';

class AddAddress extends StatefulWidget {
  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
            title: 'Add',callback: (){}
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Add Address',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Enter your shipping Addres Information',
                    style: TextStyle(fontSize: 16,color: Colors.black26),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  hint: 'First Name',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Last Name',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Country',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'City/Town',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Address 1',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Address 2',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Post Code',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Phone',
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
