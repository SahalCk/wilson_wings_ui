// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_ui/utils/colors.dart';
import 'package:wilson_wings_ui/utils/sized_boxes.dart';
import 'package:wilson_wings_ui/views/widgets/wilson_fliping_cards.dart';
import 'package:wilson_wings_ui/views/widgets/wilson_option_widget.dart';
import 'package:wilson_wings_ui/views/widgets/wilson_story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> stories = [
      const WilsonStoryWidget(
          imagePath: 'assets/stories/pic1.jpg', hastag: 'kaahani'),
      const WilsonStoryWidget(
          imagePath: 'assets/stories/pic2.jpg', hastag: 'winner'),
      const WilsonStoryWidget(
          imagePath: 'assets/stories/pic3.jpg', hastag: 'gold'),
      const WilsonStoryWidget(
          imagePath: 'assets/stories/pic4.jpg', hastag: 'super hero'),
      const WilsonStoryWidget(
          imagePath: 'assets/stories/pic5.jpg', hastag: 'taj')
    ];

    List<Widget> options = [
      const WilsonOptionWidget(
          imagePath: 'assets/options/gold.png', optionName: 'Gold'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/scan_qr.png', optionName: 'Scan & Pay'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/jwelery.png', optionName: 'Jewelery'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/insurance.png', optionName: 'Insurance'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/refer.png', optionName: 'Refer & Earn'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/spin.png', optionName: 'Spin Win'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/sedn_money.png', optionName: 'Send Money'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/bill.png', optionName: 'Recharge & Bill'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/passbook.png', optionName: 'Passbook')
    ];

    List<Widget> drawerOptions = [
      const WilsonOptionWidget(
          imagePath: 'assets/options/bank.png', optionName: 'BranchX'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/gold.png', optionName: 'X Gold'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/scan_qr.png', optionName: 'Scan & Pay'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/sedn_money.png', optionName: 'Send Money'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/jwelery.png', optionName: 'Jwelery'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/spin.png', optionName: 'Spin Win'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/rewards.png', optionName: 'Rewards'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/wallet.png', optionName: 'Wallet'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/insurance.png', optionName: 'Insurance'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/bill.png', optionName: 'Pay Bills'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/support.png', optionName: 'Support'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/passbook.png', optionName: 'Passbook'),
      const WilsonOptionWidget(
          imagePath: 'assets/options/language.png', optionName: 'Language')
    ];

    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: backgroundColor,
      drawer: Drawer(
        width: Adaptive.w(100),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: Adaptive.w(5.5)),
                width: Adaptive.w(100),
                height: Adaptive.h(8),
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/branchX_logo.jpeg',
                        width: Adaptive.w(23), height: Adaptive.h(5.5)),
                    InkWell(
                      onTap: () {
                        _scaffoldKey.currentState!.closeDrawer();
                      },
                      child: Image.asset(
                        'assets/close.png',
                        width: Adaptive.w(23),
                        height: Adaptive.h(5.5),
                      ),
                    ),
                  ],
                ),
              ),
              sizedBoxHeight20,
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(
                      vertical: Adaptive.h(1), horizontal: Adaptive.w(5.5)),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: Adaptive.h(3),
                      crossAxisSpacing: Adaptive.w(7),
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => drawerOptions[index],
                  itemCount: drawerOptions.length,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Adaptive.w(5.5)),
                  width: Adaptive.w(100),
                  height: Adaptive.h(8),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              _scaffoldKey.currentState!.openDrawer();
                            },
                            child: Image.asset('assets/menu.png',
                                width: Adaptive.w(12), height: Adaptive.h(4.8)),
                          ),
                          SizedBox(
                            width: Adaptive.w(1),
                          ),
                          Image.asset(
                            'assets/branchX_logo.jpeg',
                            width: Adaptive.w(23),
                            height: Adaptive.h(5.5),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 21,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 18.3,
                                  backgroundColor: Colors.white,
                                  child: Image.asset('assets/bell.png',
                                      width: Adaptive.w(8),
                                      height: Adaptive.h(2.8)),
                                ),
                              ),
                              Positioned(
                                right: Adaptive.w(0.1),
                                child: const CircleAvatar(
                                  radius: 7.6,
                                  backgroundColor: Colors.red,
                                  child: CircleAvatar(
                                    radius: 2,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: Adaptive.w(4.5),
                          ),
                          CircleAvatar(
                            radius: 21,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              radius: 18.3,
                              backgroundColor: Colors.white,
                              child: Image.asset('assets/power.png',
                                  width: Adaptive.w(10),
                                  height: Adaptive.h(3.5)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        sizedBoxHeight30,
                        SizedBox(
                          height: Adaptive.h(12),
                          child: ListView.separated(
                              padding: EdgeInsets.only(left: Adaptive.w(4.5)),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return stories[index];
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: Adaptive.w(5),
                                );
                              },
                              itemCount: stories.length),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: Adaptive.w(4.5)),
                          child: Column(
                            children: [
                              sizedBoxHeight30,
                              SizedBox(
                                height: Adaptive.h(23.5),
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return const WilsonFlippingCard();
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        width: Adaptive.w(8),
                                      );
                                    },
                                    itemCount: 2),
                              ),
                              sizedBoxHeight20,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.red,
                                  ),
                                  SizedBox(
                                    width: Adaptive.w(4),
                                  ),
                                  const CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              sizedBoxHeight20,
                              SizedBox(
                                height: Adaptive.h(45),
                                child: GridView.builder(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Adaptive.h(1)),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisSpacing: Adaptive.h(2.5),
                                          crossAxisSpacing: Adaptive.w(6),
                                          crossAxisCount: 3),
                                  itemBuilder: (context, index) =>
                                      options[index],
                                  itemCount: 9,
                                ),
                              ),
                              sizedBoxHeight30,
                              Container(
                                  padding: EdgeInsets.all(Adaptive.h(2.7)),
                                  width: Adaptive.w(100),
                                  height: Adaptive.h(23),
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 54, 75, 138),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                    'Introducing\nbranchX Gold',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        letterSpacing: 1,
                                                        fontFamily:
                                                            'NatoSansBold')),
                                                SizedBox(
                                                  height: Adaptive.h(1.25),
                                                ),
                                                const Text(
                                                    'Buy Digital Gold.Sell Gold,\nand Jwelery and get gold coins.',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16)),
                                              ],
                                            ),
                                            Image.asset(
                                              'assets/jinn.png',
                                              width: Adaptive.w(20),
                                            )
                                          ],
                                        ),
                                        sizedBoxHeight15,
                                        SizedBox(
                                          width: Adaptive.w(100),
                                          height: Adaptive.h(4),
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8)),
                                                  backgroundColor:
                                                      Colors.white),
                                              child: const Text('REGISTER NOW',
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      letterSpacing: 1,
                                                      color: Color.fromARGB(
                                                          255, 54, 75, 138),
                                                      fontFamily:
                                                          'NatoSansBold'))),
                                        ),
                                      ])),
                              sizedBoxHeight20,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.red,
                                  ),
                                  SizedBox(
                                    width: Adaptive.w(4),
                                  ),
                                  const CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Adaptive.w(4),
                                  ),
                                  const CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Adaptive.w(4),
                                  ),
                                  const CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.red,
                                    child: CircleAvatar(
                                      radius: 4,
                                      backgroundColor: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              sizedBoxHeight50,
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: Adaptive.w(5),
              bottom: Adaptive.h(3),
              child: NeumorphicButton(
                  padding: const EdgeInsets.all(3),
                  style: const NeumorphicStyle(
                      color: backgroundColor,
                      shape: NeumorphicShape.convex,
                      intensity: 1,
                      depth: 10,
                      boxShape: NeumorphicBoxShape.circle()),
                  onPressed: () {},
                  child: Image.asset('assets/phone.png',
                      fit: BoxFit.fill, width: Adaptive.w(12))),
            ),
          ],
        ),
      ),
      floatingActionButton: CircleAvatar(
        radius: 36,
        backgroundColor: const Color.fromARGB(255, 230, 106, 106),
        child: Image.asset('assets/lamp.png', width: Adaptive.w(9)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: Adaptive.h(10),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset('assets/cards.png', width: Adaptive.w(7)),
              SizedBox(height: Adaptive.h(0.5)),
              const Text('CARDS',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                sizedBoxHeight10,
                Row(
                  children: [
                    SizedBox(width: Adaptive.w(7)),
                    const Text('XENIE',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                sizedBoxHeight10,
                sizedBoxHeight15
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/profile.png', width: Adaptive.w(7)),
                SizedBox(height: Adaptive.h(0.5)),
                const Text('MY PROFILE',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}
