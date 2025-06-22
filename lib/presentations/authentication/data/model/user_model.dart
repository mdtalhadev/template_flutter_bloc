import 'package:equatable/equatable.dart';

enum UserRole {
  shopkeeper, // 0
  factory, // 1
  vehicle // 2
}

class UserModel extends Equatable {
  final String uid;
  final String name;
  final String email;
  final String? phone;
  final UserRole role;
  final DateTime createdAt;
  final DateTime updatedAt;

  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    this.phone,
    required this.role,
    DateTime? createdAt,
    DateTime? updatedAt,
  })
      : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        uid: map['uid'] as String,
        name: map['name'] as String,
        email: map['email'] as String,
        phone: map['phone'] as String?,
        role: UserRole.values[map['role'] as int],
        createdAt : DateTime.fromMicrosecondsSinceEpoch(map['created_at'] as int),
        updatedAt: DateTime.fromMicrosecondsSinceEpoch(map['updated_at'] as int)
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'role': role.index,
      'created_at': createdAt.millisecondsSinceEpoch,
      'updated_at': updatedAt.millisecondsSinceEpoch,
    };
  }

  UserModel copyWith({
    String? uid,
    String? name,
    String? email,
    String? phone,
    UserRole? role,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [uid, name, email, phone, role, createdAt];

  @override
  String toString() {
    return 'UserModel(uid: $uid, name: $name, email: $email, phone: $phone, role: ${role
        .name}, createdAt: $createdAt)';
  }
}
