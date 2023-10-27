import 'package:firebase_setup/features/app/splash_screen/splash_screen.dart';
import 'package:firebase_setup/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyAMReP-ANm3-r3EZ3uArn4UhdEiPjZbaws',
          appId: '1:993016837191:web:0f8d02f14be3adfa3bed62',
          messagingSenderId: '993016837191',
          projectId: 'flutterfirebase-69b70',
        ),
      );
    } else {
      await Firebase.initializeApp();
    }
  } catch (e) {
    print('Firebase initialization error: $e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Firebase Flutter',
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
