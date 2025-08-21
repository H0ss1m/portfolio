import 'package:cloud_firestore/cloud_firestore.dart';

class AddProjectData {
  final CollectionReference project = FirebaseFirestore.instance.collection(
    'project',
  );

  Future<void> addProject({
    required String projectName,
    required String type,
    required String imageUrl,
  }) {
    // Call the user's CollectionReference to add a new user
    return project
        .add({
          'name': projectName, // Project Name
          'type': type, // Project Type
          'imageUrl': imageUrl, // Image URL
        })
        .then((value) => print("Project Added"))
        .catchError((error) => print("Failed to add project: $error"));
  }
}
