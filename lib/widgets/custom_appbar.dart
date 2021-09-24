import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  String title;
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
  //CustomAppBar(this.title);
  @override
  Widget build(BuildContext context) {

    return PreferredSize(
      preferredSize: Size(double.infinity, 56),
      child: Container(
        height: 56,
        color: Colors.white,
        child: Row(),
      ),
      // child: Container(
      //   color: Colors.white,
      //   padding: EdgeInsets.symmetric(horizontal: 8.0),
      //   margin: EdgeInsets.only(top: 8.0),
      //   height: 56,
      //   child: Row(
      //     children: [
      //       Container(
      //         height: 50.0,
      //         width: 50,
      //         //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(18.0),
      //           color: Colors.white,
      //           boxShadow: [
      //             BoxShadow(
      //                 color: Colors.grey[300],
      //                 offset: Offset(2.0, 2.0), //(x,y)
      //                 blurRadius: 5,
      //                 spreadRadius: 0),
      //           ],
      //         ),
      //         child:  Icon(Icons.list,size: 35,color: Colors.grey,),
      //       ),
      //       SizedBox(width: 5,),
      //       Expanded(
      //         child: Container(
      //           height: 50.0,
      //           //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(18.0),
      //             color: Colors.white,
      //             boxShadow: [
      //               BoxShadow(
      //                   color: Colors.grey[300],
      //                   offset: Offset(2.0, 2.0), //(x,y)
      //                   blurRadius: 5,
      //                   spreadRadius: 0),
      //             ],
      //           ),
      //           child: TextFormField(
      //           //  obscureText: widget.hint=='Please enter your password'?true:false,
      //             //keyboardType: widget.keyboardType,
      //             decoration: InputDecoration(
      //                 hintText: 'Search Proucts',
      //                 hintStyle: TextStyle(color: Colors.grey[500]),
      //                 contentPadding: EdgeInsets.only(left: 8.0),
      //                 border: InputBorder.none,
      //                 focusedBorder: InputBorder.none,
      //                 enabledBorder: InputBorder.none,
      //                 errorBorder: InputBorder.none),
      //           ),
      //         ),
      //       ),
      //       SizedBox(width: 5,),
      //       Container(
      //         height: 50.0,
      //         width: 50.0,
      //         //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(18.0),
      //           color: Colors.white,
      //           boxShadow: [
      //             BoxShadow(
      //                 color: Colors.grey[300],
      //                 offset: Offset(2.0, 2.0), //(x,y)
      //                 blurRadius: 5,
      //                 spreadRadius: 0),
      //           ],
      //         ),
      //         child:  Icon(Icons.shopping_cart,size: 35,color: Colors.grey,),
      //       ),
      //       SizedBox(width: 5,),
      //       Container(
      //         height: 50.0,
      //         width: 50.0,
      //         //    margin: const EdgeInsets.only(bottom: 138.0), //Same as `blurRadius` i guess
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(18.0),
      //           color: Colors.white,
      //           boxShadow: [
      //             BoxShadow(
      //                 color: Colors.grey[300],
      //                 offset: Offset(2.0, 2.0), //(x,y)
      //                 blurRadius: 5,
      //                 spreadRadius: 0),
      //           ],
      //         ),
      //         child:  Icon(Icons.notifications,size: 35,color: Colors.grey,)
      //       ),
      //
      //     ],
      //   ),
      //   // child: Row(
      //   //   children: [
      //   //     GestureDetector(
      //   //         child: Container(
      //   //             height: 40,
      //   //             width: 40,
      //   //             padding: EdgeInsets.all(8.0),
      //   //             margin: EdgeInsets.all(8.0),
      //   //             decoration: BoxDecoration(
      //   //                 borderRadius: BorderRadius.circular(10.0),
      //   //                 color: primaryColor),
      //   //             child: Padding(
      //   //               padding: const EdgeInsets.all(0.0),
      //   //               child: SvgPicture.asset(
      //   //                 'assets/icons/menu.svg',
      //   //                 color: Colors.white,
      //   //                 height: 20,
      //   //               ),
      //   //             )),
      //   //         onTap: () {
      //   //           Scaffold.of(context).openDrawer();
      //   //           print('Appbar opening');
      //   //         }),
      //   //     Text(title,style: kH1white,),
      //   //     Spacer(),
      //   //     GestureDetector(
      //   //         child: Container(
      //   //             height: 40,
      //   //             width: 40,
      //   //             padding: EdgeInsets.all(8.0),
      //   //             //  margin: EdgeInsets.all(8.0),
      //   //             decoration: BoxDecoration(
      //   //                 borderRadius: BorderRadius.circular(10.0),
      //   //                 color:primaryColor),
      //   //             child: Padding(
      //   //               padding: const EdgeInsets.all(0.0),
      //   //               child: SvgPicture.asset(
      //   //                 'assets/icons/location.svg',
      //   //                 color: Colors.white,
      //   //                 height: 20,
      //   //               ),
      //   //             )),
      //   //         onTap: () {
      //   //           // Navigator.pushNamed(context, 'Location');
      //   //           print('Moving to Location Screen');
      //   //           Navigator.pushNamed(context, 'Location');
      //   //         }),
      //   //
      //   //     GestureDetector(
      //   //         child: Container(
      //   //             height: 40,
      //   //             width: 40,
      //   //             padding: EdgeInsets.all(8.0),
      //   //             //  margin: EdgeInsets.all(8.0),
      //   //             decoration: BoxDecoration(
      //   //                 borderRadius: BorderRadius.circular(10.0),
      //   //                 color: primaryColor),
      //   //             child: Padding(
      //   //               padding: const EdgeInsets.all(0.0),
      //   //               child: SvgPicture.asset(
      //   //                 'assets/icons/bell.svg',
      //   //                 color: Colors.white,
      //   //                 height: 20,
      //   //               ),
      //   //             )),
      //   //         onTap: () {
      //   //           //Scaffold.of(context).openDrawer();
      //   //           Navigator.pushNamed(context, 'Notifications');
      //   //           print('Appbar opening');
      //   //         }),
      //   //     SizedBox(width:10)
      //   //   ],
      //   // ),
      // ),
    );
  }
}
