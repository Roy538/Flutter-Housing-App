import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trustify/firebase_options.dart';
import 'package:trustify/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';

import 'package:trustify/src/features/repository/authentication_repository/exceptions/authentication_repository.dart';
import 'package:trustify/src/utilis/theme/theme.dart';
// import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(Object context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.system,
        defaultTransition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(microseconds: 1000),
        // home: Dashboard());
        home: const Scaffold( body: Center(child: CircularProgressIndicator())),);
        // home: SplashScreen());
        // home: OnBoardingScreen());
  }
}
