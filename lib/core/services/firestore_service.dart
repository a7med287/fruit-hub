import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/core/services/database_service.dart';

class FireStoreService implements DataBaseServices {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Future<void> addUser({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    try {
      await db.collection(path).add(data);
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<Map<String,dynamic>> getUserData({
    required String path,
    required String uid,
  }) async {
    var data = await db.doc(path).get();
    return data.data() as Map<String, dynamic> ;
  }
}
