import 'package:eightyythree/viewmodel/cartController.dart';
import 'package:eightyythree/viewmodel/pageController.dart';
import 'package:eightyythree/views/cartscreen.dart';
import 'package:eightyythree/views/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageNavigation extends StatelessWidget {
  const PageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final MYPageController pageController =
        Get.put(MYPageController(), permanent: false);
    CartsController cartsController = Get.put(CartsController());
    return Obx(() => SafeArea(
          child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(0xFFD93E11),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/float.png',
                    width: 35,
                    height: 31,
                  ),
                  GetBuilder<CartsController>(
                    builder: (_) => Positioned(
                      child: Text(
                        '\$${cartsController.totalamount}',
                        style: const TextStyle(
                            fontFamily: 'Poppins-Regular',
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              onPressed: () {},
            ),
            body: IndexedStack(
              index: pageController.tabIndex.value,
              children: const [
                HomeScreen(),
                HomeScreen(),
                HomeScreen(),
                CartScreen(),
              ],
            ),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            pageController.tabIndex.value == 0
                                ? 'assets/homeactive.png'
                                : 'assets/homedeactive.png',
                            width: 23,
                            height: 19,
                          ),
                          Text(
                            'Grocery',
                            style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontSize: 7,
                                color: pageController.tabIndex.value == 0
                                    ? const Color(0xFFD93E11)
                                    : Colors.grey),
                          ),
                        ],
                      ),
                      onPressed: () {
                        pageController.changeTabIndex(0);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            pageController.tabIndex.value == 1
                                ? 'assets/billactive.png'
                                : 'assets/billdeactive.png',
                            width: 23,
                            height: 19,
                          ),
                          Text(
                            'News',
                            style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontSize: 7,
                                color: pageController.tabIndex.value == 1
                                    ? const Color(0xFFD93E11)
                                    : Colors.grey),
                          ),
                        ],
                      ),
                      onPressed: () {
                        pageController.changeTabIndex(1);
                      },
                    ),
                  ),
                  const Expanded(child: Text('')),
                  Expanded(
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            pageController.tabIndex.value == 2
                                ? 'assets/favactive.png'
                                : 'assets/favdeactive.png',
                            width: 23,
                            height: 19,
                          ),
                          Text(
                            'Favorites',
                            style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontSize: 7,
                                color: pageController.tabIndex.value == 2
                                    ? const Color(0xFFD93E11)
                                    : Colors.grey),
                          ),
                        ],
                      ),
                      onPressed: () {
                        pageController.changeTabIndex(2);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Column(
                        children: [
                          Image.asset(
                            pageController.tabIndex.value == 3
                                ? 'assets/cartactive.png'
                                : 'assets/cartdeactive.png',
                            width: 23,
                            height: 19,
                          ),
                          Text(
                            'Cart',
                            style: TextStyle(
                                fontFamily: 'Poppins-Regular',
                                fontSize: 7,
                                color: pageController.tabIndex.value == 3
                                    ? const Color(0xFFD93E11)
                                    : Colors.grey),
                          ),
                        ],
                      ),
                      onPressed: () {
                        pageController.changeTabIndex(3);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
