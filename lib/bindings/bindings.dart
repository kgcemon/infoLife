import 'package:edu_servey/controller/surveyScreen1Controller.dart';
import 'package:get/get.dart';

class BindingsAllController extends Bindings{
  @override
  void dependencies() {
    Get.put(SurveyScreen1Controller());
  }

}