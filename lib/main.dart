import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:clean_architecture_template/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'core/di/injection_container.dart';
import 'core/l10n/locale_cubit.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/presentation/cubit/auth_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  await sl<LocaleCubit>().load();
  runApp(const FarmManagerApp());
}

class FarmManagerApp extends StatefulWidget {
  const FarmManagerApp({super.key});

  @override
  State<FarmManagerApp> createState() => _FarmManagerAppState();
}

class _FarmManagerAppState extends State<FarmManagerApp> {
  late final AuthCubit _authCubit;
  late final AuthRouterRefresh _authRefresh;
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _authCubit   = sl<AuthCubit>();
    _authRefresh = AuthRouterRefresh(_authCubit);
    _router      = createAppRouter(_authCubit, _authRefresh);
  }

  @override
  void dispose() {
    _authRefresh.dispose();
    _authCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (_, __) => MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>.value(value: _authCubit),
          BlocProvider<LocaleCubit>.value(value: sl<LocaleCubit>()),
        ],
        child: BlocBuilder<LocaleCubit, Locale>(
          builder: (context, locale) {
            return MaterialApp.router(
              title: 'Farm Manager',
              theme: AppTheme.light,
              routerConfig: _router,
              debugShowCheckedModeBanner: false,
              locale: locale,
              supportedLocales: AppLocalizations.supportedLocales,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
            );
          },
        ),
      ),
    );
  }
}
