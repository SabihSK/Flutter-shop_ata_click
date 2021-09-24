import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class FAQ extends StatefulWidget {

  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  bool visibility1=false;
  bool visibility2=false;
  bool visibility3=false;
  bool visibility4=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ',style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          bannerFAQ(context),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               GestureDetector(
                 onTap: (){
                  setState(() {
                    visibility1=!visibility1;
                  });
                 },
                 child: Card(
                   child: Container(
                     height: 40,
                     padding: EdgeInsets.only(left: 8.0),
                     width: double.infinity,alignment: Alignment.centerLeft,
                     child: Text('What is Lorem Ipsum?',style: TextStyle(fontSize: 16),),
                   ),
                 ),
               ),
               Visibility(visible: visibility1,child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, ')),
              SizedBox(height: 10,),
               GestureDetector(
                 onTap: (){
                   setState(() {
                     visibility2=!visibility2;
                   });
                 },
                 child: Card(
                   child: Container(
                     height: 40,
                     padding: EdgeInsets.only(left: 8.0),
                     width: double.infinity,alignment: Alignment.centerLeft,
                     child: Text('Where does it come from?',style: TextStyle(fontSize: 16),),
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               Visibility(visible: visibility2,child: Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ')),
               GestureDetector(
                 onTap: (){
                   setState(() {
                     visibility3=!visibility3;
                   });
                 },
                 child: Card(
                   child: Container(
                     height: 40,
                     padding: EdgeInsets.only(left: 8.0),
                     width: double.infinity,alignment: Alignment.centerLeft,
                     child: Text('Why do we use it?',style: TextStyle(fontSize: 16),),
                   ),
                 ),
               ),
               SizedBox(height: 10,),
               Visibility(visible: visibility3,child: Text('t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,')),
               GestureDetector(
                 onTap: (){
                   setState(() {
                     visibility4=!visibility4;
                   });
                 },
                 child: Card(
                   child: Container(
                     height: 40,
                     padding: EdgeInsets.only(left: 8.0),
                     width: double.infinity,alignment: Alignment.centerLeft,
                     child: Text('Where can I get some?',style: TextStyle(fontSize: 16),),
                   ),
                 ),
               ),
               Visibility(visible: visibility4,child: Text('There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, '))

             ],
           ),
         )
        ],
      ),
    );
  }

  bannerFAQ(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
         color: primaryColor),
      child: Container(
        width: double.infinity,
      //  color: Colors.black38,
        child: Center(
            child: Text(
          'Frequently Asked Question',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
