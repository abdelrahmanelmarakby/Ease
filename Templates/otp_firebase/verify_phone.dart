import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_auth_firebase_last/controllers/login_controller.dart';

class OtpScreen extends StatelessWidget {
  final loginController = Get.put(LoginController());
  final otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginController.isLoading(false) ? Center(child: CircularProgressIndicator()) : Center(
          child: Column(
        children: [
          Spacer(),
          TextField(
            controller: otp,
            decoration: InputDecoration(
              hintText: "Enter OTP",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextButton(
            onPressed: ()  {
              loginController.otpVerify(otp.text);
            },
            child: Text("VERIFY"),
            
          ),
          Spacer(),
        ],
      )),
    );
  }
}
