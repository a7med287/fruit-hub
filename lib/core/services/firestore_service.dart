import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/core/services/database_service.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

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
  Future<UserEntity> getUserData({
    required String path,
    required String uid,
  }) async {
    var data = await db.doc(path).get();
    return UserModel.fromJson(json: data.data() as Map<String, dynamic>);
  }
}
