import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyAMReP-ANm3-r3EZ3uArn4UhdEiPjZbaws',
          appId: '1:993016837191:web:0f8d02f14be3adfa3bed62',
          messagingSenderId: '993016837191',
          projectId: 'flutterfirebase-69b70'),
    );
  }

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firebase Flutter'),
        ),
        body: Center(
          child: Container(
            child: const Text('Welcome to Firebase Setup Project'),
          ),
        ),
      ),
    );
  }
}
