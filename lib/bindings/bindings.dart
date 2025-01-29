import 'package:get/get.dart';

import '../controller/screen3controller.dart';
import '../controller/screen4controller.dart';
import '../controller/screen5controller.dart';
import '../controller/screen6controller.dart';
import '../controller/screen7controller.dart';
import '../controller/screen8controller.dart';
import '../controller/surveyAllScreenController.dart';

class BindingsAllController extends Bindings{
  @override
  void dependencies() {
    Get.put(SurveyAllScreenController());
    Get.put(Screen3Controller());
    Get.put(Screen4Controller());
    Get.put(Screen5Controller());
    Get.put(Screen6Controller());
    Get.put(Screen7Controller());
    Get.put(Screen8Controller());
  }

}