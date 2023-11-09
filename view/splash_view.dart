import 'dart:async';
import 'package:first_app/view/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> 
with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) =>  const OnBardingScreenView(),
        ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
      overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(195, 23, 22, 22), Color.fromARGB(154, 13, 12, 13)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.message_rounded,
                size: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text("Us", style:TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 32,  
              ),
            ),
          ],
        ),
      ),
    );
  }
}

