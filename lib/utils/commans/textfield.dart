import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommanTextField extends StatefulWidget {
  const CommanTextField(
      {required this.text, required this.ispassword, required this.suffixicon});

  final String text;
  final suffixicon;
  final bool ispassword;

  @override
  State<CommanTextField> createState() => _CommanTextFieldState();
}

class _CommanTextFieldState extends State<CommanTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: widget.ispassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: EdgeInsets.all(10.0),
            hintStyle: TextStyle(color: AppColor.firstColor),
          ),
          style: TextStyle(color: AppColor.firstColor),
        )
      ],
    );
  }
}
