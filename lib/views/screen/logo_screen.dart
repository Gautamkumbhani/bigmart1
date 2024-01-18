import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:bigmarket/utils/commans/appimage.dart';
import 'package:bigmarket/utils/commans/apptext.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.firstColor,
      body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                Image(image: AssetImage(AppImage.firstimage,),height: 60,

                ),
                SizedBox(
                  width: 15,
                ),
                Text(AppText.Homepagename,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.white)),
              ],
            ),

          )),
    );

  }
}
