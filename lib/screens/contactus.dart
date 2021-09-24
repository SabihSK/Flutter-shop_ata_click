import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ata_click/components/my_appbar.dart';
import 'package:shop_ata_click/widgets/custom_button.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: myAppbar(title: 'Contact US'),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
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
                  hint: 'Email',
                ),
                // textFieldForContactUs(''),
                SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  hint: 'Phone',
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
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
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        hintText: 'Message',
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        contentPadding: EdgeInsets.only(left: 8.0),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none),
                  ),
                ),
                SizedBox(height: 20,),
                CustomButton(
                  title: 'Submit Now',
                  callback: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
