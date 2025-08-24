
abstract class DataBaseServices {
  Future<void> addUser({
    required String path,
    required Map<String, dynamic> data,
    required String? uId
  });

  Future<Map<String, dynamic>> getUserData({
    required String path,
    required String uid,
  });

  Future<bool> checkIdDataExist({required String path, required String documentId});
}
