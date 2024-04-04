import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustify/src/features/authentication/models/user_model.dart';
import 'package:trustify/src/features/authentication/screens/forget_password_otp/otp_screen.dart';
import 'package:trustify/src/features/repository/authentication_repository/exceptions/authentication_repository.dart';
import 'package:trustify/src/features/repository/authentication_repository/user_repository/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;
    if (error != null) {
      Get.showSnackbar(GetSnackBar(
        message: error.toString(),
      ));
    }
  }
  // Get PhoneNo from User and pass it to Auth repository for firebase

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(() => const OTPScreen());
  }

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}
