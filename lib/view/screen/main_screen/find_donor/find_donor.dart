import 'package:blood_donation_app/utils/app_colors/app_colors.dart';
import 'package:blood_donation_app/utils/static_string/app_string.dart';
import 'package:blood_donation_app/view/widget/custome_text/customer_text.dart';
import 'package:blood_donation_app/view/widget/donor_listtile/donor_listtile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindDonor extends StatefulWidget {
  const FindDonor({super.key});

  @override
  State<FindDonor> createState() => _FindDonorState();
}

class _FindDonorState extends State<FindDonor> {
  //lIST OF DIVISON
  final List<String> divisonList = [
    AppString.dhaka,
    AppString.mymensingh,
    AppString.rajhshahi,
    AppString.rangpur,
    AppString.chattogram,
    AppString.barishal,
    AppString.sylhen,
    AppString.khulna,
  ];

  //current item
   String? currentDivisonItem = AppString.selectBlood;

  //lIST OF BLOOD
  final List<String> bloodList = [
    AppString.aPositive,
    AppString.aNagative,
    AppString.abPositive,
    AppString.abNagative,
    AppString.bPositive,
    AppString.bNagative,
    AppString.oPositive,
    AppString.oNagative,
  ];
  //current item
  late String? currentBloodItem = AppString.selectBlood;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: AppColors.secandaryColor),
        ),
        title: CustomeText(
          text: AppString.findDonors,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.secandaryColor,
        ),
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF9E1010), Color(0xFF770A0A)],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity.w,
            height: 153.h,
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
                CustomeText(
                  text: AppString.bloodDonorsAroundYou,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secandaryColor,
                ),

                //Divison DropDown
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onChanged: (val) {},
                    hint: CustomeText(
                      text: AppString.selectDivision,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    items: divisonList
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                  ),
                ),

                //Blodd DropDown
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onChanged: (val) {},
                    hint: CustomeText(
                      text: AppString.selectBlood,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    items: bloodList
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19),
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
