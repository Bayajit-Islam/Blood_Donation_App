import 'dart:convert';

import 'package:blood_donation_app/utils/api/local_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class BaseClient {
  // <===========  Post Method  ==========>
  static Future<http.Response> postRequest({
    required String api,
    required Map<String, dynamic> body,
  }) async {
    // <===========  Inject Local Storage  ==========>

    final LocalStorage localStorage = Get.put(LocalStorage());
    String? accessToken = localStorage.read("accessToken");

    // <===========  Header  Define  ==========>
    var headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken",
    };

    // <===========  Dart To Json Convert  ==========>
    var jsonBody = jsonEncode(body);

    // <===========  Check Response  ==========>
    try {
      http.Response response = await http.post(
        Uri.parse(api),
        headers: headers,
        body: jsonBody,
      );
      return response;
    } catch (e) {
      throw "$e";
    }
  }

  // <======================================================================>
}
