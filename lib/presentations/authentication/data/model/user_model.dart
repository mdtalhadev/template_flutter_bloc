enum UserType { employee, manager }

class UserModel {
  final String? id;
  final String email;
  final String? firstName;
  final String? lastName;
  final UserType role;

  UserModel({
    this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.role = UserType.manager,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'] as String,
      firstName: json['first_name'],
      lastName: json['last_name'] as String?,
      role: UserType.values.firstWhere((v) => v.name == json['role'], orElse: () => UserType.manager),
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'role': role.name,
    };
    map.removeWhere((key, value) => value == null);
    return map;
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    UserType? role,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      role: role ?? this.role,
    );
  }

  @override
  String toString() {
    return 'UserModel{id: $id, email: $email, firstName: $firstName, lastName: $lastName, role: $role}';
  }
}
