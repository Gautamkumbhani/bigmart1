import 'package:bigmarket/utils/commans/appcolor.dart';
import 'package:bigmarket/utils/commans/appimage.dart';
import 'package:bigmarket/utils/commans/apptext.dart';
import 'package:bigmarket/utils/commans/pageview.dart';
import 'package:bigmarket/views/screen/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.7,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              children: [
                onboarding(
                  text: AppText.Name,
                  subtext: AppText.Namescreen,
                  img: AppImage.onlinegroceryimage,
                ),
                onboarding(
                  text: AppText.name,
                  subtext: AppText.namescreen,
                  img: AppImage.loginpage2,
                ),
                onboarding(
                  text: AppText.named,
                  subtext: AppText.namedscreen,
                  img: AppImage.loginpage3,
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: 3,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
        ],
      ),
      bottomSheet: isLastPage
          ? Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: height * 0.05,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.firstColor)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NavigationBarScreen(),
                      ),
                    );
                  },
                  child: Text('start',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColor.whiteColor)),
                ),
              ),
          )
          : Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: height * 0.05,
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: Center(
                          child: Text('skip',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ))),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: Center(
                          child: Container(
                            height: height * 0.10,
                            width: width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.firstColor,
                            ),
                            child: Center(
                                child: Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.whiteColor),
                            )),
                          ),
                        )),
                  ],
                ),
              ),
            ),
    );
  }
}
