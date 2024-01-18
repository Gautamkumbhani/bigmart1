import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class GlobleButtonScren extends StatelessWidget {
  final VoidCallback onTap;
  final button;
  GlobleButtonScren({super.key, required this.onTap,  this.button});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){},
      child: Container(

        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.firstColor,
        ),



        // child: ElevatedButton(
        //   style: ButtonStyle(
        //       backgroundColor: MaterialStatePropertyAll(AppColor.primarycolor)),
        //
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(button, style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),),
          ],
        ),
        // ),
      ),
    );
  }
}