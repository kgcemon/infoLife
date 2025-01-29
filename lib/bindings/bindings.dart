import 'package:get/get.dart';

import '../controller/surveyAllScreenController.dart';

class BindingsAllController extends Bindings{
  @override
  void dependencies() {
    Get.put(SurveyAllScreenController());
  }

}