import 'package:get/get.dart';

class ExploreServiceController extends GetxController {
  RxString filterScreenState = "RENT".obs;

  toggleState() {
    if (filterScreenState.value == "RENT") {
      filterScreenState.value = "BUY";
    } else {
      filterScreenState.value = "RENT";
    }
  }
}
