import 'package:eightyythree/viewmodel/cartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartItem extends StatelessWidget {
  const CartItem({@required this.index, super.key});
  final int? index;
  @override
  Widget build(BuildContext context) {
    CartsController cartsController = Get.put(CartsController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(cartsController.cartList[index!].image!),
            ),
            child: Container()),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cartsController.cartList[index!].name!,
              style:
                  const TextStyle(fontFamily: 'Poppins-Medium', fontSize: 12),
            ),
            Row(children: [
              Text(
                cartsController.cartList[index!].weight.toString(),
                style:
                    const TextStyle(fontFamily: 'Poppins-Medium', fontSize: 9),
              ),
              Text(
                ' ${cartsController.cartList[index!].unit!}',
                style:
                    const TextStyle(fontFamily: 'Poppins-Medium', fontSize: 9),
              ),
            ]),
            Text(
              '\$ ${cartsController.cartList[index!].price.toString()}',
              style: const TextStyle(
                fontFamily: 'Poppins-Bold',
                fontSize: 18,
                color: Color(0xFFB13E55),
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            InkWell(
              child: Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFB0EAFD),
                ),
                child: const Center(
                  child: Icon(
                    Icons.remove,
                    color: Color(0xFF48B6DA),
                  ),
                ),
              ),
              onTap: () => cartsController.decreasQty(index!),
            ),
            GetBuilder<CartsController>(
              builder: (_) => SizedBox(
                width: 45,
                child: Center(
                  child: Text(
                    cartsController.cartList[index!].qty.toString(),
                    style: const TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontSize: 19,
                      color: Color(0xFF424242),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFB0EAFD),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Color(0xFF48B6DA),
                  ),
                ),
              ),
              onTap: () => cartsController.increasQty(index!),
            ),
          ],
        ),
      ],
    );
  }
}
