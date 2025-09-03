import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownCard extends StatelessWidget {
  final String text;
  const DropdownCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 50.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(8),
        ),
        child: CustomeText(
          text: text,
          textAlign: TextAlign.start,
          color: AppColors.primaryText,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
