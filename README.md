# Farm Manager (Muchak Manager App)

Flutter mobile client for the **Farm Unit Management System** — manage farm units, daily checklist entries (including hive inspections), users, and configurable fields. Pairs with the Laravel API in the [mouchak_manager](https://github.com/your-org/mouchak_manager) backend repository.

---

## Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Requirements](#requirements)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Running the App](#running-the-app)
- [API Base URL](#api-base-url)
- [Backend Setup](#backend-setup)
- [User Roles](#user-roles)
- [Localization](#localization)
- [Building a Release APK](#building-a-release-apk)
- [Testing](#testing)
- [Default Login (Development)](#default-login-development)

---

## Features

| Area | Description |
|------|-------------|
| **Authentication** | Email/password login, secure token storage, session restore on launch |
| **Role-based dashboards** | Separate home screens for super admin, admin, and field users |
| **Farm units** | List, create, edit, and view units; QR scan to open a unit quickly |
| **Checklist entries** | Per-unit entries with status, date/time, photos, comments, hive inspection fields, and admin-defined custom fields |
| **User management** | Admins create/edit users and freeze accounts |
| **Field configs** | Admins define and reorder checklist field definitions |
| **Frozen account handling** | Frozen users see a dedicated screen and cannot perform writes |
| **Localization** | English and Bangla (বাংলা), toggle in-app |

---

## Tech Stack

| Layer | Technology | Purpose |
|-------|------------|---------|
| Framework | Flutter 3.x | Cross-platform UI |
| State | `flutter_bloc` | Feature BLoCs |
| DI | `get_it` | Service locator |
| Networking | `dio` | REST API client |
| Routing | `go_router` | Declarative navigation + auth redirects |
| Storage | `flutter_secure_storage` | Auth token |
| QR | `mobile_scanner`, `qr_flutter` | Scan and display unit QR codes |
| Images | `image_picker`, `cached_network_image` | Entry photos and avatars |
| i18n | `flutter gen-l10n` | EN / BN strings |

Architecture follows **clean architecture** per feature: `data` → `domain` → `presentation`, with shared code under `lib/core/`.

---

## Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install) **3.10+** (Dart `^3.10.4`)
- Android Studio / VS Code with Flutter extension
- Android device or emulator (primary target)
- Running **Farm Manager API** (see [Backend Setup](#backend-setup))

---

## Project Structure

```
lib/
├── core/
│   ├── constants/       # API paths, base URL
│   ├── di/              # GetIt registration
│   ├── errors/          # Failures, API error parsing
│   ├── l10n/            # Locale cubit, string helpers
│   ├── network/         # Dio client, interceptors
│   ├── router/          # GoRouter routes and auth guards
│   ├── theme/           # App theme
│   └── widgets/         # Shared UI components
├── features/
│   ├── auth/
│   ├── dashboard/
│   ├── unit/
│   ├── checklist/
│   ├── user/
│   └── checklist_config/
├── l10n/                # ARB files (en, bn)
└── main.dart

assets/
├── images/
└── icons/

run_dev.ps1              # USB + localhost API
run_lan.ps1              # Same WiFi LAN API
build_client_apk.ps1     # Release APK with public IP API URL
```

---

## Installation

```bash
git clone <your-repo-url> clean_architecture_template
cd clean_architecture_template
flutter pub get
```

Generate localization classes (also runs automatically on `flutter run` when `generate: true` in `pubspec.yaml`):

```bash
flutter gen-l10n
```

---

## Running the App

### 1. Start the backend API

From the **mouchak_manager** repo:

```bash
cd backend
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate --seed
php artisan storage:link
```

For local development on all interfaces:

```powershell
cd backend
.\serve-dev.ps1
```

API base (local): `http://127.0.0.1:8000/api/v1`

Full API docs: [mouchak_manager/backend/README.md](https://github.com/your-org/mouchak_manager/blob/main/backend/README.md)

### 2. Run the Flutter app

**Option A — USB device + localhost (recommended for dev)**

Forwards port 8000 from the phone to your PC, then runs the app:

```powershell
.\run_dev.ps1
```

**Option B — Same WiFi (no USB)**

Update the IP in `run_lan.ps1` to your PC’s LAN address, then:

```powershell
.\run_lan.ps1
```

**Option C — Manual**

```bash
flutter run --dart-define=BASE_URL=http://127.0.0.1:8000/api/v1
```

---

## API Base URL

The API root is set at **compile time** via `--dart-define=BASE_URL=...`.

Default when no define is passed (see `lib/core/constants/api_constants.dart`):

```
https://makaapp.makafoodbd.com/api/v1
```

| Scenario | Example `BASE_URL` |
|----------|-------------------|
| USB + `adb reverse` | `http://127.0.0.1:8000/api/v1` |
| Same WiFi | `http://<PC_LAN_IP>:8000/api/v1` |
| Production | `https://makaapp.makafoodbd.com/api/v1` |
| Client APK (public IP) | Set by `build_client_apk.ps1` |

---

## Backend Setup

This app does **not** include the API. Clone and run the backend separately:

| Item | Location |
|------|----------|
| API repository | `C:\Users\mdnur\StudioProjects\mouchak_manager` (or your clone path) |
| API version prefix | `/api/v1` |
| Auth | Laravel Sanctum bearer token (stored securely on device) |

If `run_dev.ps1` cannot find `mouchak_manager\backend\connect-device.ps1`, it falls back to `adb reverse tcp:8000 tcp:8000`.

---

## User Roles

| Role | App experience |
|------|----------------|
| `super_admin` | Super admin dashboard; full system access |
| `admin` | Admin dashboard; manage units, users, configs, and entries |
| `user` | Field dashboard; units and checklist entries for assigned work |
| Frozen | Any role with `is_frozen` → frozen screen, no writes |

Route guards and home redirects are implemented in `lib/core/router/app_router.dart`.

---

## Localization

- **English** (`en`) — default template: `lib/l10n/app_en.arb`
- **Bangla** (`bn`) — `lib/l10n/app_bn.arb`

Users can switch language in the app. Locale preference is persisted via `LocaleCubit`.

To add or change strings, edit the ARB files and run:

```bash
flutter gen-l10n
```

---

## Building a Release APK

Builds a release APK with your machine’s **public IP** embedded as `BASE_URL` (for remote clients on the internet):

```powershell
.\build_client_apk.ps1
```

**Requirements before distributing:**

1. Backend running and reachable on port `8000`
2. Router port forwarding and firewall rules configured if needed
3. Release signing configured in `android/app/build.gradle.kts` (currently uses debug signing for convenience)

Output path:

```
build/app/outputs/flutter-apk/app-release.apk
```

Custom URL without the script:

```bash
flutter build apk --release --dart-define=BASE_URL=https://your-domain.com/api/v1
```

---

## Testing

```bash
flutter test
```

Widget and BLoC tests use `flutter_test`, `bloc_test`, and `mocktail` (see `dev_dependencies` in `pubspec.yaml`).

---

## Default Login (Development)

After seeding the backend database:

| Field | Value |
|-------|--------|
| Email | `admin@farmmanager.com` |
| Password | `Admin@123` |
| Role | `admin` |

Change these credentials before any production deployment.

---

## Related Repositories

| Project | Description |
|---------|-------------|
| **clean_architecture_template** (this repo) | Flutter Android/iOS client |
| **mouchak_manager** | Laravel 11 REST API + MySQL |

---

## License

Private / internal use unless otherwise specified by the project owner.
