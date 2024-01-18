import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:bigmarket/utils/commans/apptext.dart';
import 'package:bigmarket/utils/commans/globaltext.dart';
import 'package:bigmarket/utils/commans/textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                height: height* 0.14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: globaltext(
                    text: AppText.signup,
                  textStyle: TextStyle(fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,fontSize: height*0.03,color: AppColor.greyColor),
                ),
              ),
              SizedBox(
                height: height* 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: globaltext(
                    text: AppText.signup1,
                  textStyle: TextStyle(fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,fontSize: 14,color: AppColor.greyColor),



                ),
              ),
              SizedBox(
                height: height*0.03,
              ),
              CommanTextField(
                text: 'Name',
                ispassword: false, suffixicon: null,
              ),
              SizedBox(
                height: height*0.01,
              ),
              CommanTextField(
                text: 'Email',
                ispassword: false,
                suffixicon: Icon(Icons.password),
              ),
              SizedBox(
                height: height* 0.01,
              ),
              CommanTextField(
                text: 'Password',
                ispassword: false,
                suffixicon: Icon(Icons.password),
              )
            ],
          ),
        ),
      ),
    );
  }
}
