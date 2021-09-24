import 'package:flutter/material.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
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
                height: 10,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Chris Pat',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SizedBox(
                height: 30,
              ),
              profileTile(title: 'My Account', img: 'assets/icons/user.png',route: 'EditProfile'),
              SizedBox(
                height: 15,
              ),
              profileTile(title: 'My Orders', img: 'assets/icons/order.png',route: 'MyOrders'),
              SizedBox(
                height: 15,
              ),
              profileTile(
                  title: 'Shipping Address', img: 'assets/icons/shipping.png',route: 'ShippingAddress'),
              SizedBox(
                height: 15,
              ),
              profileTile(title: 'My Card', img: 'assets/icons/card.png',route: 'CardDetails'),
              SizedBox(
                height: 15,
              ),
              profileTile(title: 'Settings', img: 'assets/icons/settings.png',route: 'Settings'),
              SizedBox(
                height: 15,
              ),
              profileTile(title: 'Privacy Policy', img: 'assets/icons/privacy.png',route: 'PrivacyPolicy'),
              SizedBox(
                height: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }

  profileTile({String img, String title,String route}) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, route);
      },
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          children: [
            SizedBox(width: 5,),
            Image.asset(
              img,
              height: 25,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey[300],
                offset: Offset(2.0, 2.0), //(x,y)
                blurRadius: 5,
                spreadRadius: 0),
          ],
        ),
      ),
    );
  }
}
