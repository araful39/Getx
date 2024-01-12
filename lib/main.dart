import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/part-08/view/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      translationsKeys: translations,
      locale: Locale('en', 'US'), // Set the initial locale
    );
  }
}

// Define translations for internationalization
var translations = {
  'en_US': {
    'email_hint': 'Email',
    'pass_hint': 'Password',
    'login': 'Login',
  },
  'es_ES': {
    'email_hint': 'Correo electrónico',
    'pass_hint': 'Contraseña',
    'login': 'Iniciar sesión',
  },
  // Add translations for other languages as needed
};
