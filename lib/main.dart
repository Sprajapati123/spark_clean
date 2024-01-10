import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sparkling_clean/constants/colors.dart';
import 'package:sparkling_clean/routes/routes_generator.dart';
import 'package:sparkling_clean/screens/onboarding/onboarding_screen.dart';
import 'package:sparkling_clean/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sparkling clean',
        theme: ThemeData(
          fontFamily: "Roboto",
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0.0),
        ),
        navigatorKey: RouteGenerator.navigatorKey,
        initialRoute: SplashScreen.routeName,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
