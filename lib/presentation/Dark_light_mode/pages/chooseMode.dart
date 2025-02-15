import 'package:ethmusic/common/widgets/button/basic_button.dart';
import 'package:ethmusic/core/config/assets/app_images.dart';
import 'package:ethmusic/core/config/assets/app_vectors.dart';
import 'package:ethmusic/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           fit: BoxFit.fill, image: AssetImage(AppImages.))),
          // ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(AppVectors.logo)),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text("Dark"))),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: Text("light")))
                  ],
                ),
                SizedBox(
                  height: 21,
                ),
                BasicButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ChooseMode()));
                  },
                  title: 'Continue',
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}


  // 
             