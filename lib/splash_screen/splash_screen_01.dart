import 'package:flutter/material.dart';
import 'package:mallika_ui/components/const_colors.dart';
import 'package:mallika_ui/home/home_page.dart';

import 'splash_screen_02.dart';
import 'splash_screen_03.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({Key? key}) : super(key: key);

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
                'assets/images/img_1.png',
                fit: BoxFit.cover,
                width: size.width,
              ),
              Positioned(
                right: 20,
                top: 50,
                child: Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Center(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Cera Pro',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
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
                  'Make recipes your own'.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: 'Cera Pro',
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'With Mallika recipe editor, you can easily '
                  'edit recipes, save adjustments to '
                  'ingredients, and add additional steps or '
                  'tips to your preparation.',
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
                      onTap: () {},
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
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SplashScreenTwo(),
                          ),
                        );
                      },
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: kOrangeColor),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
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
