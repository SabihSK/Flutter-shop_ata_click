import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shop_ata_click/screens/sign_in.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              GestureDetector(
              onTap: ()=>Navigator.pop(context)
              ,child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(Icons.arrow_back,color: Colors.black,),
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Text('Please enter your information below to sign up'),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: CustomTextField(hint: 'Please enter your name',keyboardType: TextInputType.text,),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: CustomTextField(hint: 'Please enter your email',keyboardType: TextInputType.emailAddress,),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: Text(
                  'Password',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: CustomTextField(hint: 'Please enter your password',keyboardType: TextInputType.emailAddress,),
              ),

              SizedBox(height: MediaQuery.of(context).size.height*0.05),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ArgonButton(
                    height: 50,
                    //  materialTapTargetSize: MaterialTargetS,
                    roundLoadingShape: true,
                    width: MediaQuery.of(context).size.width*0.9 ,
                    onTap: (startLoading, stopLoading, btnState) {
                      if (btnState == ButtonState.Idle) {
                        startLoading();
                        Future.delayed(Duration(seconds: 3),(){
                          return  Navigator.pushNamed(context, 'Dashboard');
                        });
                      } else {
                        stopLoading();
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    loader: Center(
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Center(
                          child: SpinKitPulse(
                            color: Colors.white,
                            // size: loaderWidth ,
                          ),
                        ),
                      ),
                    ),
                    borderRadius: 24.0,
                    color: primaryColor,
                  ),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(color: Colors.grey[500], fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>SignIn()));
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
