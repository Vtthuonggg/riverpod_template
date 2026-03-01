# Riverpod App Template

Flutter template project with clean architecture, Riverpod state management, and best practices.

## Features

- ✅ Clean Architecture
- ✅ Riverpod State Management
- ✅ Go Router Navigation
- ✅ Dio HTTP Client
- ✅ Freezed Models
- ✅ Environment Configuration
- ✅ Error Handling
- ✅ Logger Service
- ✅ Reusable Widgets

## Getting Started

### Prerequisites

- Flutter SDK >= 3.11.0
- Dart SDK >= 3.11.0

### Installation

1. Clone the repository

```bash
git clone <repository-url>
cd riverpodd_template
```

2. Install dependencies

```bash
flutter pub get
```

3. Run code generation

```bash
dart run build_runner build --delete-conflicting-outputs
```

4. Create `.env` file

```env
API_BASE_URL=https://your-api.com/api/v1
API_KEY=your_api_key
AVATAR_BASE_URL=https://i.pravatar.cc
CONNECT_TIMEOUT=30
RECEIVE_TIMEOUT=30
```

5. Run the app

```bash
flutter run
```

## Project Structure

```
lib/
├── core/
│   ├── config/          # App configuration
│   ├── constants/       # App constants
│   ├── extensions/      # Dart extensions
│   ├── network/         # HTTP client
│   ├── router/          # Navigation
│   ├── theme/           # App theme
│   ├── utils/           # Utility functions
│   └── widgets/         # Reusable widgets
├── features/
│   ├── auth/
│   │   ├── data/        # Data layer
│   │   ├── domain/      # Domain layer
│   │   └── presentation/# UI layer
│   └── home/
│       ├── data/
│       ├── domain/
│       └── presentation/
└── main.dart
```

## Tech Stack

- **State Management**: Riverpod
- **Navigation**: Go Router
- **HTTP Client**: Dio
- **Code Generation**: Freezed, JSON Serializable
- **Environment**: flutter_dotenv

## Development

### Run code generation (watch mode)

```bash
dart run build_runner watch
```

### Build for iOS

```bash
flutter build ios --release
```

### Build for Android

```bash
flutter build apk --release
```

## License

MIT License
