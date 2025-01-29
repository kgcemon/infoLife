import 'package:get/get.dart';

class Screen8Controller extends GetxController {

  RxInt activeIndex = 0.obs;
  RxInt activeIndex2 = 0.obs;

  indexChanger(int index){
    activeIndex.value = index;
  }

  indexChanger2(int index){
    activeIndex2.value = index;
  }
}