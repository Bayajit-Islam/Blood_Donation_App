import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final Color borderColor;
  final Color bgColor;
  final void Function()? onTap;
  const CustomerButton({
    super.key,
    required this.buttonText,
    this.textColor = AppColors.secandaryColor,
    this.borderColor = AppColors.brand,
    this.bgColor = AppColors.brand,
    required this.onTap 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity.w,
        height: 43.h,
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(width: 2, color: AppColors.brand),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: CustomeText(
            text: buttonText,
            color: textColor,
            fontSize: 16,
            fontFamily: "inter",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
