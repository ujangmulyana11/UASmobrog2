import 'package:car_rental/libservices/authentication_service.dart';
import 'package:car_rental/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart'; 
import 'splashscreen.dart';

Future<void> main() async { 
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp(); 
  runApp(MyApp()); 
} 

class MyApp extends StatelessWidget { 
  // This widget is the root of your application. 
  @override 
  Widget build(BuildContext context) { 
    return MultiProvider( 
      providers: [ 
        Provider<AuthenticationService>( 
          create: (_) => AuthenticationService(FirebaseAuth.instance), 
        ), 
        StreamProvider( 
            create: (context) => 
                context.read<AuthenticationService>().authStateChanges), 
      ], 
      child: MaterialApp(
        title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, 
        theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
        home: SplashScreenPage(), 
      ), 
    ); 
  } 
} 
