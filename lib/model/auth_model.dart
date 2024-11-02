import 'package:due_kasir/model/user_model.dart';

class AuthModel {
  int? id;
  UserModel? user;
  DateTime? createdAt;

  AuthModel({
    this.id,
    this.user,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'user': user,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  factory AuthModel.fromJson(json) {
    return AuthModel(
      id: json['id'],
      user: json['user'],
      createdAt:
          json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
    );
  }
}
