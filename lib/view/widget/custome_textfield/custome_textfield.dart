import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeTextfield extends StatelessWidget {
  const CustomeTextfield({
    super.key,
    required this.hintext,
    required this.controller,
  });
  final String hintext;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      height: 50.h,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(
            color: AppColors.typ2Colors,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: AppColors.cardColor,

          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
