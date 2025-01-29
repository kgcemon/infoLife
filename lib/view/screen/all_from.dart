import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controller/surveyAllScreenController.dart';

class AllFrom extends StatefulWidget {
  const AllFrom({super.key});

  @override
  State<AllFrom> createState() => _AllFromState();
}

class _AllFromState extends State<AllFrom> {

  final SurveyAllScreenController _allScreenController =
  Get.find<SurveyAllScreenController>();

  @override
  void initState() {
    super.initState();
    load();
  }

  load() async {
    print(await _allScreenController.getAllData());
  }

  // Function to delete data by id (assuming id is present in your data)
  deleteData(int id) async {
    bool result = await _allScreenController.deleteData(id); // Call the delete method from the controller
    if (result) {
      setState(() {}); // Refresh the UI after deleting the item
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete the item.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SvgPicture.asset("assets/logo.svg"),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _allScreenController.getAllData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available.'));
          }

          List<Map<String, dynamic>> dataList = snapshot.data!;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                var data = dataList[index];
                int id = data['id']; // Assuming each item has a unique id field
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xffEFF7FF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name: ${data['your_name']}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              'Phone: ${data['mobile_number']}',
                              style: const TextStyle(color: Colors.black54),
                            ),
                            Text(
                              'District: ${data['q13']}',
                              style: const TextStyle(color: Colors.black54),
                            ),
                            Text(
                              'Upazila: ${data['upo_zila']}',
                              style: const TextStyle(color: Colors.black54),
                            ),
                            Text(
                              'Feedback: ${data['feedback']}',
                              style: const TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          // Call the delete function when the icon is pressed
                          deleteData(id);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
