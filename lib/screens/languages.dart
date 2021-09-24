import 'package:flutter/material.dart';


class Languages extends StatefulWidget {
  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  int valueForRadio1 = 3;
  int valueForRadio2 = 4;
  int valueForRadio3 = 5;
  int valueForRadio4 = 7;
  int English = 1;
  int French = 6;
  int Spain=7;
  int Portugese=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Languages',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          //CartIconWidget(),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //    color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/images/usa.png',
                        ),
                      )),
                ),
                SizedBox(width: 10),
                Text('English'),
                Spacer(),
                Radio(
                    value: 1,
                    groupValue: English,
                    onChanged: (val) {
                      setState(() {
                        English = val;
                        French = 0;
                        Spain=0;
                        Portugese=0;
                      });
                    }),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //    color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/images/japan.png',
                        ),
                      )),
                ),
                SizedBox(width: 10),
                Text('Japanese'),
                Spacer(),
                Radio(
                    value: 2,
                    groupValue: French,
                    onChanged: (val) {
                      setState(() {
                        print(val);
                        French = val;
                        English = 0;
                        Spain=0;
                        Portugese=0;
                      });
                    }),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                    //    color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/images/turkish.png',
                        ),
                      )),
                ),
                SizedBox(width: 10),
                Text('Turkish'),
                Spacer(),
                Radio(
                    value: 1,
                    groupValue: Spain,
                    onChanged: (val) {
                      setState(() {
                        Spain = val;
                        French = 0;
                        Portugese=0;
                        English=0;
                      });
                    }),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  decoration: BoxDecoration(
                    //  shape: BoxShape.circle,
                  //    color: Colors.red,
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                          'assets/images/germany.png',
                        ),
                      )),
                ),
                SizedBox(width: 10),
                Text('German'),
                Spacer(),
                Radio(
                    value: 2,
                    groupValue: Portugese,
                    onChanged: (val) {
                      setState(() {
                        print(val);
                        Portugese = val;
                        English = 0;
                        French=0;
                        Spain=0;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
