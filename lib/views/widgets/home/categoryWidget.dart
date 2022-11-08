import 'package:eightyythree/viewmodel/categorycontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController = Get.put(CategoryController());
    return SizedBox(
      height: 120,
      child: Obx(
        () => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Explore by Category',
                  style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 11),
                ),
                Text(
                  'See All (${categoryController.categoryList.length.toString()})',
                  style: const TextStyle(
                      fontFamily: 'Poppins-Medium', fontSize: 9),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryController.categoryList.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(
                              categoryController.categoryList[index].color!),
                        ),
                        child: Container()),
                    const Spacer(),
                    Text(
                      categoryController.categoryList[index].name!,
                      style: const TextStyle(
                          fontFamily: 'Poppins-Medium', fontSize: 10),
                    ),
                  ]);
                },
                separatorBuilder: (context, _) {
                  return const SizedBox(
                    width: 20,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
