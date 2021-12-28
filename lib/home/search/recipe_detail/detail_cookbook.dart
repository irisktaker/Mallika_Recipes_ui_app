import 'package:flutter/material.dart';
import 'package:mallika_ui/components/const_colors.dart';
import 'package:mallika_ui/home/search/search_screen.dart';

import 'recipe_detail_intro.dart';

class DetailCookBook extends StatelessWidget {
  const DetailCookBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              width: size.width,
              height: 400,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/img.png',
                    height: 288,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17.0, vertical: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: kWhiteColor,
                          radius: 24,
                          child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchScreen(),
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: kBlackColor,
                              size: 16,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: kWhiteColor,
                          radius: 24,
                          child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_outlined,
                              color: kBlackColor,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 24.0),
                        width: size.width - 32,
                        height: 185,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          border: Border.all(width: 1, color: kLightGreyColor),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Menu ayam spesial',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Recoleta',
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Keep it easy with these simple but \ndelicious recipes.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: kGreyColor,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    '4,8',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Ratings',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 24),
                                  Container(
                                    width: 1,
                                    height: 20,
                                    color: kGreyColor,
                                  ),
                                  const SizedBox(width: 24),
                                  const Text(
                                    '7',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    'Recipes',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
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
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: kLightGreyColor,
                      filled: true,
                      hintText: "Recipe Title, Ingredient",
                      suffixIcon: const Icon(Icons.search),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Popular Recipe',
                    style: TextStyle(
                      fontFamily: 'Recoleta',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 138,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: kGreyColor),
                      borderRadius: BorderRadius.circular(16),
                      color: kWhiteColor,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kari Daging Sapi',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: const [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '4.9 | 103 Reviews',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            Row(
                              children: const [
                                Icon(
                                  Icons.schedule,
                                  color: kLightGreyColor,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '40 min',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Icon(
                                  Icons.dinner_dining,
                                  color: kLightGreyColor,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Easy',
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset('assets/images/img_14.png'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: const [
                      Text(
                        'All Recipe (7)',
                        style: TextStyle(
                          fontFamily: 'Recoleta',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.sort_by_alpha,
                        color: kGreyColor,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/img_15.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Ayam Kecap Manis',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '4.9 | 103 Reviews',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 58),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kDarkBlueColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Text(
                                      "Puplished",
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 36),
                          const Icon(
                            Icons.more_vert_outlined,
                            size: 26,
                          ),
                        ],
                      ),
                      const Divider(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/img_16.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Buncis Kuah Santan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '4.9 | 103 Reviews',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 58),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kDarkBlueColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Text(
                                      "Puplished",
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 36),
                          const Icon(
                            Icons.more_vert_outlined,
                            size: 26,
                          ),
                        ],
                      ),
                      const Divider(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/img_17.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Cumi Saus Telur Asin',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '4.9 | 103 Reviews',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(width: 58),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: kDarkBlueColor,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Text(
                                      "Puplished",
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 36),
                          const Icon(
                            Icons.more_vert_outlined,
                            size: 26,
                          ),
                        ],
                      ),
                      const Divider(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/img_18.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Nasi Magelangan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.schedule,
                                    color: kLightGreyColor,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '40 min',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.dinner_dining,
                                    color: kLightGreyColor,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Easy',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 170),
                          const Icon(
                            Icons.more_vert_outlined,
                            size: 26,
                          ),
                          const SizedBox(width: 3),
                        ],
                      ),
                      const Divider(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/img_19.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Sambal Goreng Kentang',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.schedule,
                                    color: kLightGreyColor,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '40 min',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.dinner_dining,
                                    color: kLightGreyColor,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Easy',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 130),
                          const Icon(
                            Icons.more_vert_outlined,
                            size: 26,
                          ),
                          const SizedBox(width: 3),
                        ],
                      ),
                      const Divider(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/img_20.png',
                            width: 60,
                            height: 60,
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Resep Ayam Geprek Jogja',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.schedule,
                                    color: kLightGreyColor,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '40 min',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.dinner_dining,
                                    color: kLightGreyColor,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Easy',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 120),
                          const Icon(
                            Icons.more_vert_outlined,
                            size: 26,
                          ),
                          const SizedBox(width: 3),
                        ],
                      ),
                      const Divider(height: 30),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RecipeDetailInfo(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/images/img_21.png',
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Sup Makaroni Daging Ayam Kampung',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text(
                                      '4.9 | 103 Reviews',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 58),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kDarkBlueColor,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: const Text(
                                        "Puplished",
                                        style: TextStyle(
                                          color: kWhiteColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 36),
                            const Icon(
                              Icons.more_vert_outlined,
                              size: 26,
                            ),
                          ],
                        ),
                      ),
                      const Divider(height: 30),
                      const SizedBox(height: 10),
                    ],
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
