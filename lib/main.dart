import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/main_screens/cart_sceen/cart_screen.dart';
import 'package:food_app/screens/main_screens/main_screen.dart';
import 'package:food_app/screens/main_screens/tracking_screens/traking_screens.dart';
import 'package:food_app/screens/splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivary App",
      //home: SplashScreen(),
      //home: MainScreen(),
      //home: CartScreen(),
      home: TrackingScreen(),
    );
  }
}
