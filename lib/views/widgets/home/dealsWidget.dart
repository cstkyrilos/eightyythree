import 'package:eightyythree/viewmodel/dealcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DealsWidget extends StatelessWidget {
  const DealsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DealsController dealsController = Get.put(DealsController());
    return SizedBox(
      height: 110,
      child: Obx(
        () => ListView.separated(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: dealsController.dealsList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 270,
              child: Row(children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: <Widget>[
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFBEDD8),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Positioned(
                      top: -6,
                      left: -6,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        backgroundImage: Image.asset(
                          'assets/heartdeactive.png',
                        ).image,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          dealsController.dealsList[index].name!,
                          style: const TextStyle(
                              fontFamily: 'Poppins-Bold', fontSize: 10),
                        ),
                        Text(
                          dealsController.dealsList[index].description!,
                          style: const TextStyle(
                              fontFamily: 'Poppins-Medium', fontSize: 10),
                        ),
                        Row(children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 15,
                          ),
                          Text(
                            '${dealsController.dealsList[index].awayfrom.toString()} Minutes Away',
                            style: const TextStyle(
                                fontFamily: 'Poppins-Light ', fontSize: 9),
                          ),
                        ]),
                        Row(
                          children: [
                            Text(
                              '\$ ${dealsController.dealsList[index].valueafter.toString()}',
                              style: const TextStyle(
                                fontFamily: 'Poppins-Bold',
                                fontSize: 13,
                                color: Color(0xFFEE6A61),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '\$ ${dealsController.dealsList[index].valuebefore.toString()}',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontFamily: 'Poppins-Bold',
                                fontSize: 13,
                                color: Color(0xFF464646),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
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
