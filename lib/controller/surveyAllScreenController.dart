import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../view/screen/sucess_gif_screen.dart';


class SurveyAllScreenController extends GetxController{

  RxInt activeIndex = 0.obs;
  RxInt activeIndex2 = 10.obs;
  RxString Q1 = ''.obs; //আপনার কী নার্সারি থেকে দশম শ্রেণিতে পড়ে এমন ছেলে-মেয়ে আছে?
  RxString Q2 = ''.obs; //থাকলে, কতোজন আছে?
  TextEditingController studentsNameController = TextEditingController(); ////১. শিক্ষার্থীর নাম
  RxString Q3 = ''.obs; //কোন স্তরে পড়ে?
  RxString Q4 = ''.obs; //তারা কী প্রাইভেট শিক্ষকের কাছে পড়ে?
  RxString Q5 = ''.obs; //পড়লে, কোন বিষয়ে পড়ে?
  RxString Q6 = ''.obs; //আপনি কী মনে করেন, আপনার সন্তানেরা আধুনিক শিক্ষা থেকে পিছেয়ে আছে?
  RxString Q7 = ''.obs; //আপনি কি তাদের ইংরেজি, কম্পিউটার এবং প্রোগ্রামিং এর মতো আধুনিক শিক্ষায় ছোট থেকে দক্ষ হিসেবে গড়ে তুলতে চান?
  RxString Q8 = ''.obs; //আপনার এলাকায় যদি এমন আধুনিক শিক্ষার সুযোগ তৈরি হয়, আপনার সন্তানকে ভর্তি করাবেন?
  RxString Q9 = ''.obs; //আপনি কি এডুলাইফ আইটি ইনস্টিটিউট সম্পর্কে জানেন?
  RxString Q10 = ''.obs; //তথ্য প্রযুক্তি, ছোটদের প্রোগ্রামিং, স্পোকেন ইংলিশ এবং স্মার্ট প্যারেন্টিং বিষয়ে যদি কোনো সেমিনার হয়, আপনি কি অংশগ্রহণ করবেন?
  RxString Q11 = ''.obs; //খাগড়াছড়িতে আধুনিক শিক্ষায় এডুলাইফ আইটি ইনস্টিটিউট এর কার্যক্রম এবং অবদান সম্পর্কে অভিভাকদের বলুন।
  TextEditingController yourNameController = TextEditingController(); //তথ্য প্রদানকারীর নাম
  RxString Q12 = ''.obs; //পিতা/মাতা/অন্যান্য
  TextEditingController mobileNumber = TextEditingController(); //মোবাইল নম্বর
  TextEditingController othersPhoneNumber = TextEditingController(); //বিকল্প মোবাইল নম্বর
  RxString Q13 = 'খাগড়াছড়ি'.obs; //জেলা
  RxString upoZila = ''.obs; //উপজেলা
  TextEditingController unionController = TextEditingController(); //উপজেলা
  TextEditingController pidbackController = TextEditingController(); //ফিডব্যাক

  // SQLite database instance
  Database? _database;


  indexChanger2(int index){
    activeIndex2.value = index;
  }

  // Initialize SQLite database
  Future<void> initDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'survey_data.db');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute('''
          CREATE TABLE survey_responses (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            q1 TEXT,
            q2 TEXT,
            students_name TEXT,
            q3 TEXT,
            q4 TEXT,
            q5 TEXT,
            q6 TEXT,
            q7 TEXT,
            q8 TEXT,
            q9 TEXT,
            q10 TEXT,
            q11 TEXT,
            your_name TEXT,
            q12 TEXT,
            mobile_number TEXT,
            other_phone_number TEXT,
            q13 TEXT,
            upo_zila TEXT,
            union_name TEXT,
            feedback TEXT
          )
        ''');
      },
    );
  }

  // Function to insert data into the database
  Future<void> saveData() async {
    if (_database != null) {
      await _database!.insert('survey_responses', {
        'q1': Q1.value,
        'q2': Q2.value,
        'students_name': studentsNameController.text,
        'q3': Q3.value,
        'q4': Q4.value,
        'q5': Q5.value,
        'q6': Q6.value,
        'q7': Q7.value,
        'q8': Q8.value,
        'q9': Q9.value,
        'q10': Q10.value,
        'q11': Q11.value,
        'your_name': yourNameController.text,
        'q12': Q12.value,
        'mobile_number': mobileNumber.text,
        'other_phone_number': othersPhoneNumber.text,
        'q13': Q13.value,
        'upo_zila': upoZila.value,
        'union_name': unionController.text,
        'feedback': pidbackController.text,
      });
      print("Data saved successfully!");
    } else {
      print("Database is not initialized!");
    }
  }




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
  RxInt howManyHasStudentsFromNurseryToTenthGradeSelected = 30.obs;
  void howManyHasStudentsFromNurseryToTenthGradeSelector(int index){
    howManyHasStudentsFromNurseryToTenthGradeSelected.value = index;
    print(index);
  }


  // Function to retrieve all data from the database
  Future<List<Map<String, dynamic>>> getAllData() async {
    if (_database != null) {
      final List<Map<String, dynamic>> data = await _database!.query('survey_responses');
      return data;
    } else {
      print("Database is not initialized!");
      return [];
    }
  }


  //কোন স্তরে পড়ে?
  RxInt whoIsReadSelected = 0.obs;
  void whoIsReadSelector(int index){
    print(Q1.value);
    whoIsReadSelected.value = index;
    print(index);
  }


  // Method to delete data by ID
  Future<bool> deleteData(int id) async {
    final db = _database;
    int result = await db!.delete(
        'survey_responses',
        where: 'id = ?',
        whereArgs: [id]
    );
    return result > 0;  // If delete was successful, return true
  }


  @override
  void onInit() {
    super.onInit();
    initDatabase();
  }


  nextScreen(){
    print(activeIndex.value);
    if (activeIndex.value==0) {
      if (Q1.value == "না") {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else if (Q1.value == "হ্যাঁ") {

        if (Q2.value.isNotEmpty) {
          changeScreen(activeIndex.value + 1);
        } else {
          Get.snackbar(
              backgroundColor: const Color(0xffEFEFEF),
              "error",
              "Please Select 1");
        }
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }
    else if (activeIndex.value==1) {
      if (studentsNameController.text.isNotEmpty && Q3.value.isNotEmpty) {
        changeScreen(activeIndex.value + 1);
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value==2) {
      if (Q4.value == "না") {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else if (Q4.value == "হ্যাঁ") {

        if (Q5.value.isNotEmpty) {
          changeScreen(activeIndex.value + 1);
        } else {
          Get.snackbar(
              backgroundColor: const Color(0xffEFEFEF),
              "error",
              "Please Select 1");
        }
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value==3) {
      if (Q6.value.isNotEmpty && Q7.isNotEmpty) {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value==4) {
      if (Q8.value.isNotEmpty && Q9.isNotEmpty) {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value==5) {
      if (Q10.isNotEmpty) {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value==6) {
      if (Q11.isNotEmpty) {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value == 7) {
      if (yourNameController.text.isNotEmpty && activeIndex.value==7 && mobileNumber.text.isNotEmpty && othersPhoneNumber.text.isNotEmpty) {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value == 8) {
      if (upoZila.value.isNotEmpty && unionController.text.isNotEmpty) {
        changeScreen(activeIndex.value += 1);
        activeIndex.value+1;
      } else {
        Get.snackbar(
            backgroundColor: const Color(0xffEFEFEF),
            "error",
            "Please Select 1");
      }
    }else if (activeIndex.value == 9) {
      Get.snackbar("Success", "Your Data Save Successful");
      saveData().then((value) => Get.to(()=>const SucessGifScreen()),);
    }
  }


}
