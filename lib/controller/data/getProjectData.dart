import 'package:cloud_firestore/cloud_firestore.dart';

class GetProjectData {
  List data = [];
  getData() async {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('project')
        .get();
    for (var element in snapshot.docs) {
      data.addAll(snapshot.docs);
    }
  }
}
