import 'package:eightyythree/viewmodel/addresscontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressesWidget extends StatelessWidget {
  const AddressesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AddressController addresscontroller = Get.put(AddressController());
    return SizedBox(
      height: 50,
      child: Obx(
        () => ListView.separated(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: addresscontroller.addressList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: const Color(0xFFF1F1F1),
                ),
              ),
              child: Row(children: [
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD7D7D7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text(
                      addresscontroller.addressList[index].name!,
                      style: const TextStyle(
                          fontFamily: 'Poppins-Bold', fontSize: 11),
                    ),
                    Text(
                      addresscontroller.addressList[index].street!,
                      style: const TextStyle(
                          fontFamily: 'Poppins-Medium', fontSize: 9),
                    ),
                    Text(
                      addresscontroller.addressList[index].build!,
                      style: const TextStyle(
                          fontFamily: 'Poppins-Medium', fontSize: 9),
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
