import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:bigmarket/utils/commans/appimage.dart';
import 'package:bigmarket/utils/commans/apptext.dart';
import 'package:bigmarket/utils/commans/globaltext.dart';
import 'package:bigmarket/utils/commans/textbutton.dart';
import 'package:bigmarket/utils/commans/textfield.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: globaltext(
                  text: AppText.sign,
                  textStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: height * 0.03,
                      color: AppColor.greyColor),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: globaltext(
                  text: AppText.signs,
                  textStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColor.greyColor),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CommanTextField(
                text: 'Email',
                ispassword: false,
                suffixicon: null,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              CommanTextField(
                text: 'Password',
                ispassword: false,
                suffixicon: Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(AppText.forget,
                        style: TextStyle(

                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                            color: Color(0xff5041FC))),
                  ],
                ),

              ),
              SizedBox(
                height: 30,
              ),
              GlobleButtonScren(button: 'Sign In',onTap: (){}),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(child: Container(
                    height: 1,
                    color: Colors.black,
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Or sign in with',),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(child: Container(
                    height: 1,
                    color: Colors.black,
                  )),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 55,
                    width: 55,

                  )

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
