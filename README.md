# Clean Architecture Template

A production-ready **Flutter project template** built with Clean Architecture and Cubit state management. Clone this repo as the starting point for any new Flutter project — auth, profile, routing, theming, DI, and networking are all wired up and ready to go.

---

## Features

| Area | Description |
|------|-------------|
| **Authentication** | Email/password login, secure token storage, session restore on launch |
| **Profile** | View and edit the authenticated user's profile |
| **Auth guards** | GoRouter redirect logic — unauthenticated users are redirected to login automatically |
| **Localization** | English and Bangla (বাংলা), switchable in-app, persisted across sessions |
| **Theming** | Material 3 theme with a centralized color palette and text styles |
| **Responsive layout** | `flutter_screenutil` configured with a 390×844 design base |

---

## Tech Stack

| Layer | Package | Purpose |
|-------|---------|---------|
| State management | `flutter_bloc` (Cubit) | `AuthCubit`, `ProfileCubit`, `LocaleCubit` |
| Dependency injection | `get_it` | Service locator, registered in `injection_container.dart` |
| Networking | `dio` + `pretty_dio_logger` | REST API client with auth token interceptor |
| Routing | `go_router` | Declarative navigation with auth redirect guards |
| Secure storage | `flutter_secure_storage` | Auth token persistence |
| Functional programming | `dartz` | `Either<Failure, T>` result types in use cases |
| Value equality | `equatable` | State and entity comparison |
| i18n | `flutter gen-l10n` | ARB-based EN / BN string generation |
| UI helpers | `flutter_screenutil`, `shimmer` | Responsive sizing and loading skeletons |

---

## Architecture

Follows **Clean Architecture** per feature with three layers:

```
feature/
├── data/
│   ├── datasources/       # Remote API calls (Dio)
│   ├── models/            # JSON serialization, extends entities
│   └── repositories/      # Implements domain repository contracts
├── domain/
│   ├── entities/          # Plain Dart objects, no framework dependencies
│   ├── repositories/      # Abstract contracts
│   └── usecases/          # Single-responsibility business logic
└── presentation/
    ├── cubit/             # Cubit + State
    └── screens/           # Flutter UI
```

Shared infrastructure lives under `lib/core/`:

```
core/
├── constants/     # API endpoints, timeouts
├── di/            # GetIt registrations
├── errors/        # Failure types, exception mapping
├── l10n/          # LocaleCubit, AppStrings, extension helpers
├── network/       # ApiClient (Dio wrapper + auth interceptor)
├── router/        # AppRouter, AppRoutes, AuthRouterRefresh
├── storage/       # SecureStorage wrapper
├── theme/         # AppTheme, AppColors, text styles
└── widgets/       # AppButton, AppTextField, LoadingWidget, etc.
```

---

## Project Structure

```
lib/
├── core/                  # Shared infrastructure (see above)
├── features/
│   ├── auth/              # Login, logout, session check
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │       ├── cubit/     # AuthCubit, AuthState
│   │       └── screens/   # LoginScreen, SplashScreen
│   └── profile/           # View and edit user profile
│       ├── data/
│       ├── domain/
│       └── presentation/
│           ├── cubit/     # ProfileCubit, ProfileState
│           └── screens/   # HomeScreen, ProfileScreen
├── l10n/                  # app_en.arb, app_bn.arb
└── main.dart
```

---

## Getting Started

### 1. Clone and install dependencies

```bash
git clone <your-repo-url> clean_architecture_template
cd clean_architecture_template
flutter pub get
```

### 2. Configure the API base URL

Open `lib/core/constants/api_constants.dart` and set your backend URL:

```dart
static const baseUrl = String.fromEnvironment(
  'BASE_URL',
  defaultValue: 'https://api.example.com/api/v1',
);
```

Or pass it at runtime:

```bash
flutter run --dart-define=BASE_URL=https://api.example.com/api/v1
```

### 3. Generate localization files

```bash
flutter gen-l10n
```

This runs automatically on `flutter run` because `generate: true` is set in `pubspec.yaml`.

### 4. Run the app

```bash
flutter run
```

---

## Adding a New Feature

Each feature follows the same pattern. To scaffold a new feature called `orders`:

```
lib/features/orders/
├── data/
│   ├── datasources/order_remote_datasource.dart
│   ├── models/order_model.dart
│   └── repositories/order_repository_impl.dart
├── domain/
│   ├── entities/order_entity.dart
│   ├── repositories/order_repository.dart
│   └── usecases/get_orders_usecase.dart
└── presentation/
    ├── cubit/order_cubit.dart
    ├── cubit/order_state.dart
    └── screens/order_list_screen.dart
```

Then register in `lib/core/di/injection_container.dart` and add routes in `lib/core/router/app_router.dart`.

---

## Auth Flow

```
SplashScreen
  └── AuthCubit.checkAuth()
        ├── success → HomeScreen
        └── failure → LoginScreen
              └── AuthCubit.login(email, password)
                    ├── success → HomeScreen
                    └── failure → show error snackbar
```

The `AuthRouterRefresh` notifier wires `AuthCubit` to `GoRouter` so that logout automatically redirects to the login screen.

---

## Cubit Reference

| Cubit | Location | Methods |
|-------|----------|---------|
| `AuthCubit` | `auth/presentation/cubit/` | `login()`, `logout()`, `checkAuth()` |
| `ProfileCubit` | `profile/presentation/cubit/` | `load()`, `update()` |
| `LocaleCubit` | `core/l10n/` | `toggle()`, `setLocale()`, `load()` |

---

## Localization

- **English** — `lib/l10n/app_en.arb` (default)
- **Bangla** — `lib/l10n/app_bn.arb`

To add or update strings, edit the ARB files and run:

```bash
flutter gen-l10n
```

The `LanguageToggle` widget in the app bar lets users switch language at runtime.

---

## Testing

```bash
flutter test
```

Dev dependencies include `flutter_test`, `bloc_test`, and `mocktail`.

---

## Requirements

- Flutter SDK **3.35+** (Dart `>=3.4.0`)
- Android Studio or VS Code with the Flutter extension
- Android / iOS device or emulator

---

## License

MIT — free to use as a starting point for any project.
