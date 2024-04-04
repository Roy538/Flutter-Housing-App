/* 
=========
Todo : Step -1 [Create Model]
=========
*/

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel({
    this.id,
    required this.password,
    required this.email,
    required this.fullName,
    required this.phoneNo,
  });
  toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password,
    };
  }

  /// Step 1 - Map user fetched from firebase to UserModel
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id : document.id,
      password: data["Password"],
      email: data["Email"],
      fullName: data["FullName"],
      phoneNo: data["Phone"],
    );
  }
}
