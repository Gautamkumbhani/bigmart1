import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:bigmarket/utils/commans/globaltext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class GlobleButtonScren extends StatelessWidget {
  final VoidCallback;
  final double height;
  final double width;
  final text;
  final Color? color;
  final double? fontsize;
  final dynamic fontweight;
  final String? fontfamily;
  final onPressed;

  GlobleButtonScren({super.key,
    required this.height,
    required this.width,
    this.VoidCallback,
    this.text,
    this.color,
    this.fontsize,
    this.fontweight,
    this.fontfamily,
    this.onPressed



  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColor.firstColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: VoidCallback,
        child: Center(
          child: globaltext(
            text: text,
            fontfamily: fontfamily ?? GoogleFonts.inter().toString(),
            fontweight: fontweight ?? FontWeight.w600,
            color: color ?? Colors.white,
            fontsize: fontsize,
          ),
        ),
      ),
    );
  }
}