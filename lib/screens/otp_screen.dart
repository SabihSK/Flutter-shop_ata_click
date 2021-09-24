import 'package:flutter/material.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: ()=>Navigator.pop(context)
                  ,child: Icon(Icons.arrow_back,color: Colors.black,)),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07
              ),

              Text(
                'Verification',  style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),

              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please enter the OTP code sent to you by SMS',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'Enter Code',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10,),
              OptForm(),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t get a code?',
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  ),
                  Text(
                    'Send again',
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
              Spacer(),
              Container(
                height: 50,
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.1),
                width: double.infinity,
                child: RaisedButton(
                  color: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Dashboard');
                  },
                  child: Text(
                    'Verify',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class OptForm extends StatefulWidget {
  @override
  _OptFormState createState() => _OptFormState();
}


class _OptFormState extends State<OptForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pin2FocusNode=FocusNode();
    pin3FocusNode=FocusNode();
    pin4FocusNode=FocusNode();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();

  }

  nextFocus(String val,FocusNode focusNode){
    if (val.length==1){
      focusNode.requestFocus();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:38.0),
      child: Row(
        children: [
          Expanded(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                height: 50,
               // width: 520,
                padding: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                 // shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200],
                        offset: Offset(1.0, 1.0), //(x,y)
                        blurRadius: 7,
                        spreadRadius: 3),
                  ],
                ),
                child:  TextFormField(
                  autofocus: true,
                  //focusNode: pin2FocusNode,
                  onChanged: (value){
                    nextFocus(value, pin2FocusNode);
                  },
                  style: TextStyle(color: Colors.grey,fontSize: 24),
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(contentPadding: EdgeInsets.only(top:0),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      border:  UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      hintText: '0',hintStyle: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 24,

                      )
                  ),
                )
              ),
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                  height: 50,
                  // width: 520,
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(1.0, 1.0), //(x,y)
                          blurRadius: 7,
                          spreadRadius: 3),
                    ],
                  ),
                  child:  TextFormField(
                    focusNode: pin2FocusNode,
                    onChanged: (value){
                      nextFocus(value, pin3FocusNode);
                    },
                    style: TextStyle(color: Colors.grey,fontSize: 24),
                    cursorColor: primaryColor,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    obscureText: false,
                    decoration: InputDecoration(contentPadding: EdgeInsets.only(top:0),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        border:  UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        hintText: '0',hintStyle: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 24,

                        )
                    ),
                  )
              ),
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                  height: 50,
                  // width: 520,
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(1.0, 1.0), //(x,y)
                          blurRadius: 7,
                          spreadRadius: 3),
                    ],
                  ),
                  child:  TextFormField(
                    focusNode: pin3FocusNode,
                    onChanged: (value){
                      nextFocus(value, pin4FocusNode);
                    },
                    style: TextStyle(color: Colors.grey,fontSize: 24),
                    cursorColor: primaryColor,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    obscureText: false,
                    decoration: InputDecoration(contentPadding: EdgeInsets.only(top:0),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        border:  UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        hintText: '0',hintStyle: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 24,

                        )
                    ),
                  )
              ),
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Container(
                  height: 50,
                  // width: 520,
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200],
                          offset: Offset(1.0, 1.0), //(x,y)
                          blurRadius: 7,
                          spreadRadius: 3),
                    ],
                  ),
                  child:  TextFormField(
                    focusNode: pin4FocusNode,
                    onChanged: (value){

                        pin4FocusNode.unfocus();

                    },
                    style: TextStyle(color: Colors.grey,fontSize: 24),
                    cursorColor: primaryColor,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    obscureText: false,
                    decoration: InputDecoration(contentPadding: EdgeInsets.only(top:0),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        border:  UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey)
                        ),
                        hintText: '0',hintStyle: TextStyle(color: Colors.white.withOpacity(0.6),fontSize: 24,

                        )
                    ),
                  )
              ),
            ),
          ),




        ],
      ),
    );
  }




  customTextField({FocusNode requestingFocusNode,ownFocusNode}){
    return  Expanded(
      child: Container(
        height: 50,
        width: 50,
        margin: EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextFormField(
          focusNode: ownFocusNode,
          onChanged: (value){
            nextFocus(value, requestingFocusNode);
          },
          style: TextStyle(color: Colors.white,fontSize: 24),
          cursorColor: Colors.white,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          obscureText: true,
          decoration: InputDecoration(contentPadding: EdgeInsets.only(top:0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: primaryColor)
              ),
              hintText: '0',hintStyle: TextStyle(color: Colors.white,fontSize: 18,

              )
          ),
        ),
      ),
    );
  }


}
