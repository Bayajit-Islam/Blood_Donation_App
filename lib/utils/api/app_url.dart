class AppUrl {
  //<========== Base Url  ==========>
static  const String baseUrl = "http://172.252.13.83:2000/api/v1";

 // <===========  login Url  ==========>
  static const String logIn = "$baseUrl/auth/login";

  // <===========  SignUp Url  ==========>
  static const String signUp = "$baseUrl/users";

    // <===========  Profile Url  ==========>
  static const String myProfile = "$baseUrl/users/my-profile";
}
