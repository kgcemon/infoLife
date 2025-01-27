import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SurveyAllScreenController extends GetxController{

  TextEditingController studentsNameController = TextEditingController();
  RxInt activeIndex = 0.obs;
  RxString Q1 = ''.obs;
  RxString Q2 = ''.obs;

//SurveyScreenChanger
  void changeScreen(int index){
    activeIndex.value = index;
  }


  //আপনার কী নার্সারি থেকে দশম শ্রেণিতে পড়ে এমন ছেলে-মেয়ে আছে?
  RxInt hasStudentsFromNurseryToTenthGradeSelected = 0.obs;
  void hasStudentsFromNurseryToTenthGradeSelector(int index){
    hasStudentsFromNurseryToTenthGradeSelected.value = index;
    print(index);
  }

  //থাকলে, কতোজন আছে?
  RxInt howManyHasStudentsFromNurseryToTenthGradeSelected = 0.obs;
  void howManyHasStudentsFromNurseryToTenthGradeSelector(int index){
    howManyHasStudentsFromNurseryToTenthGradeSelected.value = index;
    print(index);
  }


  //কোন স্তরে পড়ে?
  RxInt whoIsReadSelected = 0.obs;
  void whoIsReadSelector(int index){
    print(Q1.value);
    whoIsReadSelected.value = index;
    print(index);
  }









}
