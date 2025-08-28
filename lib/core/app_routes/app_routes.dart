import 'package:blood_donation_app/view/screen/auth_screen/choice_type_screen/choice_type_screen.dart';
import 'package:blood_donation_app/view/screen/auth_screen/login_screen/login_screen.dart';
import 'package:blood_donation_app/view/screen/auth_screen/signup_screen/signup_screen.dart';
import 'package:blood_donation_app/view/screen/main_screen/home_screen/home_screen.dart';
import 'package:blood_donation_app/view/screen/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoute {
  //<========== Initial  Screen ==========>

  static const String splashScreen = "/splashScreen";

  //<========== Authentication Screens ==========>
  static const String choiceUserType = "/choiceUserType";
  static const String loginScreen = "/loginScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String verificationScreen = "/verificationScreen";

  //<========== Main Screens ==========>
  static const String homeScreen = "/homeScreen";

  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<=====================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

  static List<GetPage> routes = [
    //<========== Initial  Screen ==========>
    GetPage(name: splashScreen, page: () => SplashScreen()),

    GetPage(name: choiceUserType, page: () => ChoiceTypeScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: signUpScreen, page: () => SignupScreen()),

    //<========== Main Screens ==========>
    GetPage(name: homeScreen, page:()=> HomeScreen()),
  ];
}
