import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:scaler/scaler.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Lottie.network(
        "https://assets7.lottiefiles.com/temp/lf20_Djzs2p.json",
      ),
      splashIconSize: Scaler.width(0.5, context),
      nextScreen: const SplashLoading(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}

class SplashLoading extends StatelessWidget {
  const SplashLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: Scaler.width(0.20, context),
          child: Lottie.network(
            "https://assets7.lottiefiles.com/packages/lf20_usmfx6bp.json",
          ),
        ),
      ),
    );
  }
}
