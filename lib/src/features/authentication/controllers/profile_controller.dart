import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustify/src/features/authentication/models/user_model.dart';
import 'package:trustify/src/features/repository/authentication_repository/exceptions/authentication_repository.dart';
import 'package:trustify/src/features/repository/authentication_repository/user_repository/user_repository.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  
   
   /// Repositories
  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  /// Step 3 - Get User Email and pass to UserRepository to fetch user record.
  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }
   
   /// Fetch List of User records
  Future<List<UserModel>> getAllUser() async {
    return await _userRepo.allUser();
  }

  updateRecord(UserModel user) async {
    await _userRepo.updateUserRecord(user);
  }
}
