import 'package:eightyythree/model/categoryModel.dart';
import 'package:get/state_manager.dart';

class CategoryController extends GetxController {
  var isLoading = true.obs;
  var categoryList = <Category>[].obs;

  @override
  void onInit() {
    fetchCategory();
    super.onInit();
  }

  void fetchCategory() async {
    try {
      isLoading(true);
      categoryList.value =
          categoryData.map((i) => Category.fromJson(i)).toList();
    } finally {
      isLoading(false);
    }
  }
}
