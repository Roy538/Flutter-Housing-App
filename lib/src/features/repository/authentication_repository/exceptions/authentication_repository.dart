import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trustify/src/features/authentication/screens/dashboard/widgets/dashboard.dart';
import 'package:trustify/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:trustify/src/features/repository/authentication_repository/exceptions/login_email_password_failure.dart';
import 'package:trustify/src/features/repository/authentication_repository/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  // Remove unnecessary variable declaration
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  // Will be loaded when app launches this function will be called and set the firebaseUser state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  // setting the initial screen onload

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const Dashboard());
  }

  // Functions
  loginWithPhoneNo(String phoneNumber) async {
    try {
      await _auth.signInWithPhoneNumber(phoneNumber);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-phone-number') {
        Get.snackbar('Error', 'Invalid Phone Number');
      }
    } catch (_) {
      Get.snackbar('Error', 'Something went wrong. Try again');
    }
  }
    Future<void> phoneAuthentication(String phoneNo) async {
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'The provided number is not valid');
          } else {
            Get.snackbar('Error', 'Something went wrong. Try again');
          }
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId!;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId!;
        },
      );
    }

    Future<bool> verifyOTP(String otp) async {
      var credentials = await _auth.signInWithCredential(
          PhoneAuthProvider.credential(
              verificationId: this.verificationId.value, smsCode: otp));
      return credentials.user != null;
    }

    Future<String?> createUserWithEmailAndPassword(
        String email, String password) async {
      try {
        await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        firebaseUser.value != null
            ? Get.offAll(() => const Dashboard())
            : Get.to(() => const WelcomeScreen());
      } on FirebaseAuthException catch (e) {
        final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
        return ex.message;
      } catch (_) {
        const ex = SignUpWithEmailAndPasswordFailure();
        return ex.message;
      }
    }

    // Future<String?> loginWithEmailAndPassword(
    //     String email, String password) async {
    //   try {
    //     await _auth.signInWithEmailAndPassword(email: email, password: password);
    //   } on FirebaseAuthException catch (e) {
    //     final ex = LogInWithEmailAndPasswordFailure.fromCode(e.code);
    //     return ex.message;
    //   } catch (_) {
    //     const ex = LogInWithEmailAndPasswordFailure();
    //     return ex.message;
    //   }
    //   return null;
    // }

    Future<void> logout() async => await _auth.signOut();
  }

