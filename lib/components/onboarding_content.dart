import 'package:flutter/material.dart';

class OnBoardingContent extends StatefulWidget {
  String image, title;

  OnBoardingContent({this.image, this.title});

  @override
  _OnBoardingContentState createState() => _OnBoardingContentState();
}

class _OnBoardingContentState extends State<OnBoardingContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.fill, image: AssetImage(widget.image))),
        ),
        Column(
          children: [
            SizedBox( height: MediaQuery.of(context).size.height*0.25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(alignment: Alignment.center,
                child: Text(
                  widget.title,textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black,fontSize: 16)
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
