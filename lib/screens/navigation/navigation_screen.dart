import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sparkling_clean/constants/app_image.dart';
import 'package:sparkling_clean/constants/colors.dart';
import 'package:sparkling_clean/constants/textstyless.dart';
import 'package:sparkling_clean/widgets/custom_text_field.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  static const String routeName = "/navigation";

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: textOrange,),
        title: Text("Cleany",style: kW6F24O.copyWith(fontSize: 26)),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 250.sp,
            width: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 40.sp, right: 40.sp, bottom: 40.sp, top: 32.sp),
                  child: Container(
                    height: 250.sp,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: textOrange,
                        borderRadius: BorderRadius.circular(15.sp)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.sp,
                          ),
                          Text(
                            "Home Cleaning",
                            style: kW5F24G.copyWith(
                                color: Colors.white, fontSize: 26),
                          ),
                          Text("  up to",
                              style: kW5F24G.copyWith(color: Colors.white60)),
                          Text("      50%",
                              style: kW5F24G.copyWith(
                                  color: Colors.white, fontSize: 26)),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: -20.sp,
                    bottom: 30.sp,
                    height: 220.sp,
                    width: 220.sp,
                    child: Image.asset('assets/images/girl.png'))
              ],
            ),
          ),
          CustomTextField(
            hintText: "Search",
            suffix: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
