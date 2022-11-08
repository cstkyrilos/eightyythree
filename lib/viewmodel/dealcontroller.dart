import 'package:eightyythree/model/dealModel.dart';
import 'package:get/state_manager.dart';

class DealsController extends GetxController {
  var isLoading = true.obs;
  var dealsList = <Deals>[].obs;

  @override
  void onInit() {
    fetchDeals();
    super.onInit();
  }

  void fetchDeals() async {
    try {
      isLoading(true);
      dealsList.value = dealsData.map((i) => Deals.fromJson(i)).toList();
    } finally {
      isLoading(false);
    }
  }
}
