import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/dummy.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/home_pagee.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/new_page.dart';
import 'package:flutter_application_1/pages/ninjaid.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
    );
  }
}