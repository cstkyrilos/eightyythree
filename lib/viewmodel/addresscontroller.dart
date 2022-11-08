import 'package:eightyythree/model/addressModel.dart';
import 'package:get/state_manager.dart';

class AddressController extends GetxController {
  var isLoading = true.obs;
  var addressList = <Addresses>[].obs;

  @override
  void onInit() {
    fetchAddresses();
    super.onInit();
  }

  void fetchAddresses() async {
    try {
      isLoading(true);
      addressList.value =
          addressesData.map((i) => Addresses.fromJson(i)).toList();
    } finally {
      isLoading(false);
    }
  }
}
