class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity({required this.uId, required this.name, required this.email});

  toMap() {
    return {"name": name, "email": email, "uId": uId};
  }
}
