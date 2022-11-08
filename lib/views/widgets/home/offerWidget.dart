import 'package:eightyythree/viewmodel/offercontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    OffersController offersController = Get.put(OffersController());
    return SizedBox(
      height: 131,
      child: Obx(
        () => ListView.separated(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: offersController.offersList.length,
          itemBuilder: (context, index) {
            return Container(
              width: Get.width - 40,
              height: 131,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFFEC8BD),
              ),
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  width: Get.width / 2 - 75,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFEC8BD),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    Image.asset(
                      'assets/offer1.png',
                      height: 41,
                      width: 160,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          '\$ ${offersController.offersList[index].valueafter}',
                          style: const TextStyle(
                            fontFamily: 'Poppins-Bold',
                            fontSize: 18,
                            color: Color(0xFFEE6A61),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '\$ ${offersController.offersList[index].valuebefore}',
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontFamily: 'Poppins-Regular',
                            fontSize: 18,
                            color: Color(0xFF464646),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      '* Available until 24 December 2020',
                      style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          fontSize: 9,
                          color: Colors.white),
                    ),
                    const Spacer(),
                  ],
                )
              ]),
            );
          },
          separatorBuilder: (context, _) {
            return const SizedBox(
              width: 20,
            );
          },
        ),
      ),
    );
  }
}
