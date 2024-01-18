import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:bigmarket/utils/commans/apptext.dart';
import 'package:bigmarket/utils/commans/textfield.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff971DE2),
                    Color(0xffFFE86D),
                  ]),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.access_time_outlined,
                        size: 30,
                        color: AppColor.whiteColor,
                      ),
                    ),
                    Text(AppText.delevery,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            color: AppColor.whiteColor)),
                    SizedBox(
                      width: 20,
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      // color: Colors.black54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54,
                      ),
                      child: Icon(Icons.shopping_cart,
                          size: 20, color: AppColor.whiteColor),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      // color: Colors.black54,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black54,
                      ),
                      child: Icon(Icons.menu,
                          size: 20, color: AppColor.whiteColor),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for atta, dal, coke and more',hintStyle: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Inter',),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.search,size: 36),
                        ),
                        ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              Text('Shop Popular Categories',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Inter')),
              Spacer(),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text('View all >',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,fontFamily: 'Inter',color: Color(0xff1C0D56)),),
              )
            ],
          )
        ],
      ),
    );
  }
}
