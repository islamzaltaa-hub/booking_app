import 'package:booking_app/features/MapPage/MapPage.dart';
import 'package:booking_app/features/ProfilePage/ProfilePage.dart';
import 'package:booking_app/features/EventsPage/EventsPage.dart';
import 'package:booking_app/features/home_page/home_page.dart';
import 'package:booking_app/features/home_page/widgets/evendetaails.dart';
import 'package:booking_app/features/splash_screen/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // 1. استيراد Firebase
import 'firebase_options.dart'; // 2. الملف اللي اتولد

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // لازم عشان Firebase
  await Firebase.initializeApp(
    // تهيئة Firebase
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SpalshScreen(),
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        EventsPage.routeName: (context) => const EventsPage(),
        MapPage.routeName: (context) => const MapPage(),
        ProfilePage.routeName: (context) => const ProfilePage(),
        EventDetailsPage.routeName: (context) => const EventDetailsPage(),
      },
    );
  }
}
