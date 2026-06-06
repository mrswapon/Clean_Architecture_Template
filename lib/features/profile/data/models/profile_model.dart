import '../../domain/entities/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  const ProfileModel({
    required super.id,
    required super.name,
    required super.email,
    required super.role,
    super.phone,
    super.avatarUrl,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id:        json['id'] as int,
        name:      json['name'] as String,
        email:     json['email'] as String,
        role:      json['role'] as String,
        phone:     json['phone'] as String?,
        avatarUrl: json['avatar_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id':         id,
        'name':       name,
        'email':      email,
        'role':       role,
        'phone':      phone,
        'avatar_url': avatarUrl,
      };
}
