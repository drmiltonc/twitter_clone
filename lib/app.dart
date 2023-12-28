import 'package:flutter/material.dart';

import 'package:twitter_clone/theme/app_theme.dart';

import 'features/auth/view/views.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().getTheme(),
      home: const SignUpScreen()
    );
  }
}