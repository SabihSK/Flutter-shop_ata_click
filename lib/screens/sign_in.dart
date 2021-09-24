import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shop_ata_click/screens/sign_up.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool checkBoxState = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0),
                  child: Text(
                    'Welcome Back!',
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
                  child: Text('Login to your existing account'),
                ),
                SizedBox(
                  height: 30,
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
                  child: CustomTextField(
                    hint: 'Please enter your email',
                    keyboardType: TextInputType.emailAddress,
                  ),
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
                  child: CustomTextField(
                    hint: 'Please enter your password',
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'ForgotPassword');
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      )),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: primaryColor,
                      value: checkBoxState,
                      onChanged: (value) {
                        setState(() {
                          checkBoxState = value;
                        });
                      },
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                ),
                SizedBox(height: 20),
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
                        "Sign In",
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

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[200],
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 7,
                                spreadRadius: 3),
                          ],
                        ),
                        child: Image.asset(
                          'assets/icons/google.png',
                          height: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Card(
                      elevation: 2,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Container(
                        height: 40,
                        // padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[200],
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 7,
                                spreadRadius: 3),
                          ],
                        ),
                        child: Image.asset(
                          'assets/icons/fb.png',
                          height: 30,
                        ),
                      ),
                    ),
                    //    Text('Sign Up',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 16),)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(color: Colors.grey[500], fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign Up',
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
      ),
    );
  }
}
