import 'package:flutter/material.dart';
import 'package:mallika_ui/components/const_colors.dart';

import 'splash_screen_01.dart';
import 'splash_screen_03.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/img_2.png',
                fit: BoxFit.cover,
                width: size.width,
              ),
              Positioned(
                top: size.height * 0.45,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 32),
            child: Column(
              children: [
                Container(
                  width: 90,
                  height: 90,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kLightGreyColor,
                      width: 2,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/icons/chef_hat.png'),
                ),
                const SizedBox(height: 50),
                Text(
                  'All in one place'.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: 'Cera Pro',
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Storing your recipes in Mallika allows you \n'
                      'to quickly search, find, and select what \n'
                      'you want to cook.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                          builder: (context) => const SplashScreenOne(),
                        ),
                        );
                      },
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: kOrangeColor
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: kOrangeColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kOrangeColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacement(
                          context, MaterialPageRoute(
                          builder: (context) => const SplashScreenThree(),
                        ),
                        );
                      },
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kOrangeColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
