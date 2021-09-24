import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _isSwitched1 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile',style: TextStyle(color: Colors.black),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person4.jpg'),
                        maxRadius: 60,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'FullName',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      initialValue: 'Chris',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      initialValue: 'Chris@gmail.com',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Verified Phone number',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      initialValue: '021 090078601',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      initialValue: 'St 21, Dha,Karachi',
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Show me notifications about the discount',
                          style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Switch(
                            value: _isSwitched1,activeColor: primaryColor,
                            onChanged: (val) {
                              setState(() {
                                _isSwitched1 = val;
                                print(val);
                              });
                            })
                      ],
                    ),
                  ],
                ),
                Positioned(
                left: MediaQuery.of(context).size.width/2+10,
                top: 100
                ,child: CircleAvatar(
                  backgroundColor: Colors.grey[300],child: Icon(Icons.camera_alt,color: primaryColor,),
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
