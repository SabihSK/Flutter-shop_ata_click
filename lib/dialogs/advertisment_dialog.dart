import 'package:flutter/material.dart';

class AdvertismentDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/adv_banner.png'))),

          ),
          Positioned(
            left: 235,
            child: IconButton(
              icon: Icon(
                Icons.cancel_outlined,
              ),
              color: Colors.white,
              onPressed: ()=>Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
