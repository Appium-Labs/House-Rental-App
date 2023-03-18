import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxString homePageState = "RENT".obs;

  toggleState() {
    if (homePageState.value == "RENT") {
      homePageState.value = "BUY";
    } else {
      homePageState.value = "RENT";
    }
  }
}
