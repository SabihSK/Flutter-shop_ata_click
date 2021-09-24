import 'package:flutter/material.dart';
import 'package:shop_ata_click/components/my_appbar.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/utils/constants.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notification=false;
  bool fingerPrintAuth=false;
  bool faceRecognition=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myAppbar(title: 'Settings'),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),

              //........................Push Notification.......................
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [appBoxShadow],
                ),
                child: Row(
                  children: [
                    Text('Push Notification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('Off/On'),
                    Switch(
                      value: notification,activeTrackColor: primaryColor,
                      onChanged: (val){
                        setState(() {
                          notification=val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [appBoxShadow],
                ),
                child: Row(
                  children: [
                    Text('Fingerprint Authentication',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('Off/On'),
                    Switch(
                      value: fingerPrintAuth,activeTrackColor: primaryColor,
                      onChanged: (val){
                        setState(() {
                          fingerPrintAuth=val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [appBoxShadow],
                ),
                child: Row(
                  children: [
                    Text('Face Recognition LogIn',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('Off/On'),
                    Switch(
                      value: faceRecognition,activeTrackColor: primaryColor,
                      onChanged: (val){
                        setState(() {
                          faceRecognition=val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(

                onTap:(){
                  Navigator.pushNamed(context, 'Languages');
                  print('Languages called');
                },
                child:  Container(

                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [appBoxShadow],
                  ),
                  child: Row(
                    children: [

                      Text('Language',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Spacer(),
                      Text('English'),
                    Icon(Icons.arrow_forward_ios_outlined,size: 16,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
