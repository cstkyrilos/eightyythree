import 'package:eightyythree/model/productModel.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Products>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      productList.value =
          productsData.map((i) => Products.fromJson(i)).toList();
    } finally {
      isLoading(false);
    }
  }
}
