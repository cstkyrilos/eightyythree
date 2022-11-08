import 'package:eightyythree/model/cartModel.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CartsController extends GetxController {
  var isLoading = true.obs;
  var cartList = <Carts>[].obs;
  var totalamount = (0).obs;
  @override
  void onInit() {
    fetchCarts();
    super.onInit();
  }

  void fetchCarts() async {
    try {
      isLoading(true);
      cartList.value = cartsData.map((i) => Carts.fromJson(i)).toList();
      getTotal();
    } finally {
      isLoading(false);
    }
  }

  void decreasQty(int? index) {
    if (cartList[index!].qty == 1) {
      cartList.removeAt(index);
      getTotal();
      update();
    } else {
      cartList[index].decresment();
      getTotal();
      update();
    }
  }

  void increasQty(int? index) {
    if (cartList[index!].qty >= 1) {
      cartList[index].incresment();
      getTotal();
      update();
    }
  }

  void getTotal() {
    totalamount = (0).obs;
    for (Carts cart in cartList) {
      totalamount = totalamount + cart.qty * cart.price;
    }
    update();
  }
}
