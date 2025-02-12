import 'package:ethmusic/core/config/assets/app_vectors.dart';
import 'package:ethmusic/presentation/intro/pages/get_started_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splashpage extends StatefulWidget {
  const Splashpage({super.key});

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirect();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset(AppVectors.logo)),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(Duration(seconds: 2));

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => GetStartedPage()));
  }
}
