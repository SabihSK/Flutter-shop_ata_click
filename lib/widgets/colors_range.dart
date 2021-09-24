import 'package:flutter/material.dart';

class ColorRange extends StatefulWidget {
  @override
  _ColorRangeState createState() => _ColorRangeState();
}

class _ColorRangeState extends State<ColorRange> {
  List<Color> color = [
    Colors.red,
    Colors.deepOrange,
    Colors.brown,
    Colors.blueAccent,
    Colors.grey
  ];
  List<bool> check = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  for (int i = 0; i <= 4; i++) {
                   setState(() {
                     check[i]=false;
                   });
                  }
                setState(() {
                  check[index]=true;
                });
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: CircleAvatar(
                  maxRadius: 20,
                  backgroundColor: color[index],
                  child: Icon(
                    Icons.check,
                    color:check[index]? Colors.white:Colors.transparent,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
