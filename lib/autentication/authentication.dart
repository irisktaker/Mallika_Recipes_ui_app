import 'package:flutter/material.dart';
import 'package:mallika_ui/components/const_colors.dart';
import 'package:mallika_ui/splash_screen/splash_screen_01.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/img.png',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: size.height * 0.28,
                child: Container(
                  width: size.width,
                  height: size.height,
                  padding: const EdgeInsets.fromLTRB(16, 42, 16, 24),
                  decoration: const BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Mallika',
                        style: TextStyle(
                          fontSize: 39,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Recoleta',
                        ),
                      ),
                      const Text(
                        'Everyone can be a chef',
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 36),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: kLightGreyColor,
                            ),
                          ),
                          label: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 27,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFEF2323),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(4),
                                        topLeft: Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 27,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFF2EEEE),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(4),
                                        bottomLeft: Radius.circular(4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                '+62',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: kGreyColor,
                                  size: 28,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Phone Number',
                                style: TextStyle(
                                  fontFamily: 'Cera Pro',
                                  color: kGreyColor,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),

                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: (kOrangeColor),
                          fixedSize: Size(size.width, 52),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          )
                        ),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => const SplashScreenOne()),
                          );
                        },
                        child: const Text(
                          'Send OTP',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Cera Pro',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: kGreyColor,
                            height: 1.5,
                            width: size.width * 0.30,
                          ),
                          const SizedBox(width: 16),
                          const Text("OR", style: TextStyle(
                              color: kDarkGreyColor,
                              fontSize: 16,
                              fontFamily: 'Cera Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            color: kGreyColor,
                            height: 1.5,
                            width: size.width * 0.30,
                          ),
                        ],
                      ),
                      const SizedBox(height: 36),
                      SizedBox(
                        height: 125,
                        width: size.width,
                        child: Column(
                          children: [
                            Container(
                              height: 53,
                              width: size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: kGreyColor,width: 1),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const SizedBox(width: 5),
                                  const CircleAvatar(
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage('assets/icons/apple.png'),
                                  ),
                                  const SizedBox(width: 35),
                                  const Text(
                                    'Continue With Apple',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      fontFamily: 'Cera Pro',
                                    ),
                                  ),
                                  SizedBox(width: size.width * 0.25)
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Container(
                                  height: 53,
                                  width: size.width * 0.45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: kGreyColor,width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      SizedBox(width: 20),
                                      Icon(
                                        Icons.facebook,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                      SizedBox(width: 25),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          fontFamily: 'Cera Pro',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 9),
                                Container(
                                  height: 53,
                                  width: size.width * 0.45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: kGreyColor,width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      SizedBox(width: 20),
                                      CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: AssetImage('assets/icons/google.png'),
                                        radius: 12,
                                      ),
                                      SizedBox(width: 25),
                                      Text(
                                        'Google',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          fontFamily: 'Cera Pro',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 36),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'By continuing, you agree to our',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Cera Pro',
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){},
                                child: const Text(
                                  'Terms of Service',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Cera Pro',
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text('·', style: TextStyle(fontWeight: FontWeight.w900),),
                              ),
                              InkWell(
                                onTap: (){},
                                child: const Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Cera Pro',
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text('·', style: TextStyle(fontWeight: FontWeight.w900),),
                              ),
                              InkWell(
                                onTap: (){},
                                child: const Text(
                                  'Content Policy',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Cera Pro',
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
