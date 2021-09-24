import 'package:flutter/material.dart';
import 'package:shop_ata_click/screens/sign_up.dart';
import 'package:shop_ata_click/utils/color_scheme.dart';
import 'package:shop_ata_click/widgets/custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () => Navigator.pop(context)
                    , child: Icon(Icons.arrow_back, color: Colors.black,)),
                SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.07
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    'Please enter your email and we will send you a link to update your password'),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                ),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ),
                SizedBox(
                  height: 8,
                ),
                CustomTextField(hint: 'Please enter your email',
                  keyboardType: TextInputType.emailAddress,),

                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.05),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pushNamed(context,'OtpScreen');
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(color: Colors.grey[500], fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => SignUp()));
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
