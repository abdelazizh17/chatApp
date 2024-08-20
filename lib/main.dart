import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/pages/chat_page.dart';
import 'package:news_app_ui_setup/pages/login_page.dart';
import 'package:news_app_ui_setup/pages/register_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const NewsApp()
  );
}


class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      routes: {
        LoginPage.id: (context) =>  LoginPage(),
        RegisterPage.id: (context) =>  RegisterPage(),
        ChatPage.id : (context) => ChatPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
