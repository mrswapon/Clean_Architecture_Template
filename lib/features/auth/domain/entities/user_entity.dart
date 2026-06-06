import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String name;
  final String email;
  final String role;
  final bool isFrozen;
  final String? phone;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.isFrozen,
    this.phone,
  });

  bool get isSuperAdmin => role == 'super_admin';
  bool get isAdmin => role == 'admin';
  bool get hasAdminAccess => role == 'admin' || role == 'super_admin';

  @override
  List<Object?> get props => [id, name, email, role, isFrozen, phone];
}
