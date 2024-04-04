import 'package:get/get.dart';
import 'package:trustify/src/features/authentication/screens/dashboard/widgets/dashboard.dart';
import 'package:trustify/src/features/repository/authentication_repository/exceptions/authentication_repository.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.put(OTPController());
  // static OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(const Dashboard()) : Get.back();
  }
}
