import 'package:get/get.dart';

class Screen3Controller extends GetxController {

  RxInt activeIndex = 0.obs;
  RxInt activeIndex2 = 15.obs;

  indexChanger(int index){
    activeIndex.value = index;
  }

  indexChanger2(int index){
    activeIndex2.value = index;
  }
}