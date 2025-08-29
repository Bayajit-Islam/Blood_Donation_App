import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/utils/app_image/app_image.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DonorListtile extends StatelessWidget {
  const DonorListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0,left: 16,right: 16),
      child: Container(
        width: double.infinity.w,
        height: 148.h,
        decoration: BoxDecoration(
          color: AppColors.secandaryColor
        ),
        child: Row(
          children: [
            //<========== Profile Picture Here ==========>
            CircleAvatar(
              radius: 30,
              backgroundImage:AssetImage("assets/profilepicture.jpg")
            ),
            //<========== Profile Inforamation Here ==========>
            SizedBox(width: 16,),
      
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                children: [
                  //<========== Name And Icon ==========>
                  Row(
                    children: [
                      Icon(Icons.person,size: 24,),
                      SizedBox(width: 8,),
                      CustomeText(text: "Sadikul Islam",fontSize: 16,fontWeight: FontWeight.w600,)
                    ],
                  ),
                  //<========== Divider ==========>
                  SizedBox(height: 8,),
                  
                  Image.asset(AppImage.line),
              
                  //<========== Location ==========>
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImage.homePin),
                      SizedBox(width: 8,),
                      CustomeText(text: "Sherpur",fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.typ2Colors,)
                    ],
                  ),
              
                  //<========== Last Donate  ==========>
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImage.bloodType),
                      SizedBox(width: 8,),
                      CustomeText(text: "Last Donate: 3 Month Ago",fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.typ2Colors,)
                    ],
                  ),
              
                  //<========== Age ==========>
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(AppImage.accessibility),
                      SizedBox(width: 8,),
                      CustomeText(text: "28",fontSize: 13,fontWeight: FontWeight.w400,color: AppColors.typ2Colors,)
                    ],
                  ),
                ],
              ),
            ),
            //<========== Blood Type And Call ==========>
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppImage.a),
                  Image.asset(AppImage.phoneInCall),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
