import 'package:eightyythree/viewmodel/cartController.dart';
import 'package:eightyythree/views/widgets/cart/cartItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    CartsController cartsController = Get.put(CartsController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: Get.width / 3,
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                Image.asset('assets/appbarimage.png', fit: BoxFit.fill),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        size: 18,
                      ),
                      Text(
                        'Oxford Street',
                        style: TextStyle(
                            fontFamily: 'Poppins-Medium ', fontSize: 11),
                      ),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 19,
                child: Container(),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 10,
            )
          ]),
      body: Obx(
        () => Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Cart',
                  style: TextStyle(
                    fontFamily: 'Poppins-Bold',
                    fontSize: 15,
                    color: Color(0xFF424242),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: cartsController.cartList.length,
                  itemBuilder: (context, index) {
                    return CartItem(
                      index: index,
                    );
                  },
                  separatorBuilder: (context, _) {
                    return const SizedBox(
                      height: 30,
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}
