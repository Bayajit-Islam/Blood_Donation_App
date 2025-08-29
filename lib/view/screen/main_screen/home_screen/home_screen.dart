import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/utils/app_image/app_image.dart';
import 'package:blood_donation_app/utils/static_string/app_string.dart';
import 'package:blood_donation_app/view/screen/main_screen/home_screen/inner_widget/inner_widget.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:blood_donation_app/view/widget/donor_listtile/donor_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //<========== UserName And Save a Life  Give Blood ==========>
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 255.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF9E1010), Color(0xFF770A0A)],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 66),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      
                      //<========== Profile Name Picture And Notification ==========>
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/profilepicture.jpg",
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomeText(
                                text: "Sadikul Islam",
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: AppColors.background,
                              ),
                              CustomeText(
                                text: "Sherpur,Sadar",
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: AppColors.background,
                              ),
                            ],
                          ),
                          Spacer(),
                          //<========== Notificaton ==========>
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications_outlined,
                              color: AppColors.background,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //<========== Save a life Give Blood Card  ==========>
              Positioned(
                top: 225,
                left: 16,
                right: 16,
                child: Container(
                  height: 100.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(206, 213, 115, 115),
                        Color.fromARGB(207, 229, 52, 52),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomeText(
                          text: AppString.saveliveGiveBlood,
                          color: AppColors.background,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
      
                        Image.asset(AppImage.saveLifeGiveBlood),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          //<========== All Catergory  ==========>
          SizedBox(height: 66),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CateGoryTile(
                  image: AppImage.findDonor,
                  name: AppString.findDonors,
                ),
      
                CateGoryTile(
                  image: AppImage.donateNoe,
                  name: AppString.donateNow,
                ),
      
                CateGoryTile(image: AppImage.request, name: AppString.request),
              ],
            ),
          ),
          //<========== recent Donor and viewall button ==========>
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomeText(
                  text: AppString.recentDonors,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
      
                InkWell(
                  onTap: () {},
                  child: CustomeText(
                    text: AppString.viewAll,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          //liST View Builder Here

          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return DonorListtile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
