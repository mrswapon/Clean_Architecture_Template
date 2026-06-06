import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection_container.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../cubit/profile_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProfileCubit>()..load(),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatefulWidget {
  const _ProfileView();

  @override
  State<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<_ProfileView> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _phoneCtrl;
  bool _editing = false;

  @override
  void initState() {
    super.initState();
    _nameCtrl  = TextEditingController();
    _phoneCtrl = TextEditingController();
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    super.dispose();
  }

  void _startEditing(ProfileLoaded state) {
    _nameCtrl.text  = state.profile.name;
    _phoneCtrl.text = state.profile.phone ?? '';
    setState(() => _editing = true);
  }

  void _cancelEditing() => setState(() => _editing = false);

  void _save() {
    if (!_formKey.currentState!.validate()) return;
    context.read<ProfileCubit>().update(
          name:  _nameCtrl.text.trim(),
          phone: _phoneCtrl.text.trim().isEmpty ? null : _phoneCtrl.text.trim(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ProfileLoaded && _editing) {
          setState(() => _editing = false);
          context.showSnackBar('Profile updated successfully');
        }
        if (state is ProfileError) {
          context.showSnackBar(state.message, isError: true);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            title: const Text('Profile'),
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            actions: [
              if (state is ProfileLoaded && !_editing)
                IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => _startEditing(state),
                ),
              if (_editing)
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: _cancelEditing,
                ),
            ],
          ),
          body: SafeArea(
            child: () {
              if (state is ProfileLoading) {
                return const LoadingWidget();
              }
              if (state is ProfileError && !_editing) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.message,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: AppColors.textSecondary),
                      ),
                      const SizedBox(height: 16),
                      OutlinedButton(
                        onPressed: () => context.read<ProfileCubit>().load(),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              }
              if (state is ProfileLoaded) {
                final profile = state.profile;
                if (_editing) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AppTextField(
                            label: 'Name',
                            controller: _nameCtrl,
                            prefixIcon: const Icon(Icons.person_outline),
                            validator: (v) =>
                                (v == null || v.trim().isEmpty)
                                    ? 'Name is required'
                                    : null,
                          ),
                          const SizedBox(height: 16),
                          AppTextField(
                            label: 'Phone',
                            controller: _phoneCtrl,
                            keyboardType: TextInputType.phone,
                            prefixIcon: const Icon(Icons.phone_outlined),
                          ),
                          const SizedBox(height: 24),
                          AppButton(
                            label: 'Save Changes',
                            onPressed: _save,
                            icon: Icons.save_outlined,
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 16),
                      Center(
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: AppColors.primarySurface,
                          backgroundImage: profile.avatarUrl != null
                              ? NetworkImage(profile.avatarUrl!)
                              : null,
                          child: profile.avatarUrl == null
                              ? const Icon(Icons.person,
                                  size: 48, color: AppColors.primary)
                              : null,
                        ),
                      ),
                      const SizedBox(height: 24),
                      _InfoTile(label: 'Name',  value: profile.name),
                      _InfoTile(label: 'Email', value: profile.email),
                      _InfoTile(
                        label: 'Role',
                        value: profile.role
                            .replaceAll('_', ' ')
                            .toUpperCase(),
                      ),
                      if (profile.phone != null)
                        _InfoTile(label: 'Phone', value: profile.phone!),
                    ],
                  ),
                );
              }
              return const SizedBox.shrink();
            }(),
          ),
        );
      },
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text(
            '$label:  ',
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: AppColors.textSecondary,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 15,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
