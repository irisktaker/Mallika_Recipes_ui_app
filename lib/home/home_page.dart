import 'package:flutter/material.dart';
import 'package:mallika_ui/components/const_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kLightGreyColor,
      body: SafeArea(
        child:ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/profil_photo.png',
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hi Nararaya',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontFamily: 'Cera Pro',
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'What are you cooking today?',
                            style: TextStyle(
                              color: kDarkGreyColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              fontFamily: 'Cera Pro',
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.notifications_none, size: 30),
                      ),
                    ],
                  ),
                  const SizedBox(height: 27),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Cookbooks',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '1/3',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: kDarkGreyColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: size.width,
                    height: 478,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: kGreyColor.withOpacity(0.8),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/img.png',
                          height: 288,
                          width: size.width,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              width: size.width,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: kWhiteColor,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: kLightGreyColor,
                                        width: 2,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset('assets/icons/chef_hat.png'),
                                  ),
                                  const Text(
                                    'Buku resep spesial \nantara',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Recoleta',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24,
                                    ),
                                  ),
                                  const Text(
                                    'Keep it easy with these simple \nbut delicious recipes.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: kGreyColor,
                                    ),
                                  ),
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(horizontal: 40),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        const Text(
                                          '1,3K',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: kDarkGreyColor,
                                          ),
                                        ),
                                        const Text(
                                          'Likes',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: kDarkGreyColor,
                                          ),
                                        ),
                                        Container(
                                          height: 30,
                                          width: 1,
                                          color: kGreyColor,
                                        ),
                                        const Text(
                                          '7',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: kDarkGreyColor,
                                          ),
                                        ),
                                        const Text(
                                          'Recipes',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: kDarkGreyColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
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
                        onTap: () {},
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: kLightGreyColor,
                            shape: BoxShape.circle,
                            border: Border.all(color: kOrangeColor),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color: kLightGreyColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: kOrangeColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Featured Community Recipes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'Get lots of recipe inspiration from the\ncommunity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: kGreyColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/img_4.png'),
                        const SizedBox(height: 16),
                        const Text(
                          'Resep Ayam Kuah Santan Pedas Lezat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Recoleta',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
