import 'package:eightyythree/model/offerModel.dart';
import 'package:get/state_manager.dart';

class OffersController extends GetxController {
  var isLoading = true.obs;
  var offersList = <Offers>[].obs;

  @override
  void onInit() {
    fetchOffers();
    super.onInit();
  }

  void fetchOffers() async {
    try {
      isLoading(true);
      offersList.value = offersData.map((i) => Offers.fromJson(i)).toList();
    } finally {
      isLoading(false);
    }
  }
}
