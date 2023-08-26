import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    FutureBuilder(future: _initialization,builder: (context,snapshot){
      if (snapshot.hasError){
        print("Error");
      }
      if(snapshot.connectionState == ConnectionState.done){
        return BMICalculator();
      }
      return CircularProgressIndicator();
    }
    );
    return MaterialApp(
      theme: ThemeData.dark().copyWith(

          appBarTheme: AppBarTheme(
            color: const Color(0XFF0A0D22),
          ),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      home: InputPage(),
    );
  }
}

