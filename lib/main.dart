import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:dash_insta/UI/login-screen.dart';
import 'package:dash_insta/UI/register-screen.dart';
import 'package:dash_insta/UI/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dash_insta/UI/map-screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:latlng/latlng.dart';


void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Get the shared preferences instance.


  
  
  runApp(const MyApp());
  
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DASHCHATT APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        scaffoldBackgroundColor:Color.fromARGB(255, 184, 193, 244)
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text('LETS PARK'),
      //   ),
      //   body: Center(
      //     child: Text('HELLO DHRUV'),
      //   ),
//       // ),
//      home: StreamBuilder(
//   stream: FirebaseAuth.instance.authStateChanges(),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.active) {
//       if (snapshot.hasData) {
//         return  DashboardPage(); 
//       } else if (snapshot.hasError) {
//         return Center(
//           child: Text('${snapshot.error}'),
//         );
//       }
//     }
//     return const LoginScreen(); 
//   },
// )
      home:LoginScreen(),

    );
  }
}
