import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CateGoryTile extends StatelessWidget {
  final String image;
  final String name;
  final void Function()? onTap;
  const CateGoryTile({
    super.key,
    required this.image,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 109.w,
        height: 103.h,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(73, 0, 0, 0),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 60, width: 60, child: Image.asset(image)),
            CustomeText(
              text: name,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryText,
            ),
          ],
        ),
      ),
    );
  }
}
