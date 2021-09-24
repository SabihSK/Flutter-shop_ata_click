import 'package:flutter/material.dart';

class SizeRange extends StatefulWidget {
  @override
  _SizeRangeState createState() => _SizeRangeState();
}

class _SizeRangeState extends State<SizeRange> {
  List<String> sizes=['S','M','L','XL'];
  List<bool> checked=[false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: sizes.length,itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            for(int i=0;i<=3;i++){
              setState(() {
                checked[i]=false;
              });
              setState(() {
                checked[index]=true;
              });
            }
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
             // height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey),
                  color: checked[index]?Colors.grey[300]:Colors.white),
              child: Center(
                  child: Text(
                  sizes[index],
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  )),
            ),
          ),
        );
      }),
    );
  }
}
