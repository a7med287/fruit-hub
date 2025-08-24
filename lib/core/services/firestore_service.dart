import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/core/services/database_service.dart';

class FireStoreService implements DataBaseServices {
  FirebaseFirestore db = FirebaseFirestore.instance;

  @override
  Future<void> addUser({
    required String path,
    required Map<String, dynamic> data,
    required String? uId,
  }) async {
    try {
      if (uId != null) {
        await db.collection(path).doc(uId).set(data);
      } else {
        await db.collection(path).add(data);
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<Map<String, dynamic>> getUserData({
    required String path,
    required String uid,
  }) async {
    var data = await db.collection(path).doc(uid).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> checkIdDataExist({
    required String path,
    required String documentId,
  }) async {
    var data = await db.collection(path).doc(documentId).get();
    return data.exists;
  }
}
