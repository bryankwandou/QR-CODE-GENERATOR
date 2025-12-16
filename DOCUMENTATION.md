# QR Code Generator - Complete Documentation

## 📱 About This Project

This is a **simple, clean, and beginner-friendly Flutter application** for generating QR codes from any text or URL input. The project demonstrates Flutter best practices with a well-structured, extensible codebase that's easy to understand and modify.

---

## 🎯 Features

### Current Features (Version 1.0)
- ✅ **Generate QR Codes**: Convert any text or URL into a QR code instantly
- ✅ **Size Selection**: Choose from 3 preset sizes (Small: 150px, Medium: 220px, Large: 300px)
- ✅ **Input Validation**: Smart validation with helpful error messages
- ✅ **Clear Function**: Quick reset button to start fresh
- ✅ **Responsive Design**: Works perfectly on phones, tablets, and desktops
- ✅ **Clean UI**: Simple, intuitive interface in Indonesian language
- ✅ **Cross-Platform**: Runs on Android, iOS, Web, Windows, macOS, and Linux

---

## 🚀 Quick Start

### Prerequisites

Make sure you have the following installed:
- **Flutter SDK** (3.0.0 or higher) - [Download here](https://flutter.dev/docs/get-started/install)
- **Dart SDK** (3.0.0 or higher) - Usually comes with Flutter
- **IDE**: Android Studio, VS Code, or IntelliJ IDEA with Flutter plugins
- **Platform-specific tools**:
  - For Android: Android Studio & Android SDK
  - For iOS: Xcode (macOS only)
  - For Web: Chrome browser

### Installation Steps

1. **Clone the repository**:
   ```bash
   git clone https://github.com/nayrbryanGaming/QR-CODE-GENERATOR.git
   cd QR-CODE-GENERATOR
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```
   
   Or select your target device in your IDE and press Run (F5 in VS Code).

---

## 📦 Dependencies

This project uses minimal, reliable dependencies:

| Package | Version | Purpose |
|---------|---------|---------|
| **qr_flutter** | ^4.0.0 | Generates and renders QR codes with high quality |
| **cupertino_icons** | ^1.0.8 | Provides iOS-style icons |

All dependencies are well-maintained and support null safety.

---

## 📂 Project Structure

```
qrcode9desember2025/
├── lib/
│   ├── main.dart                          # Main app entry point & UI
│   └── features/
│       └── qr_generator/
│           └── presentation/
│               ├── pages/
│               │   └── qr_generator_page.dart    # (Optional modular structure)
│               └── widgets/
│                   └── qr_display.dart           # (Optional reusable widget)
├── android/                               # Android-specific files
├── ios/                                   # iOS-specific files
├── web/                                   # Web-specific files
├── test/                                  # Unit & widget tests
├── pubspec.yaml                           # Dependencies configuration
├── README.md                              # Project overview
├── DOCUMENTATION.md                       # This file
└── LICENSE                                # MIT License
```

### Main Files Explanation

#### `lib/main.dart`
The heart of the application containing:
- **MyApp**: Root widget with theme configuration
- **HomePage**: Main screen with StatefulWidget
- **_HomePageState**: Contains all UI logic, state management, and event handlers

**Key Components**:
- `TextEditingController`: Manages text input
- `_qrData`: Stores the data to encode in QR
- `_qrSize`: Stores selected QR code size
- `_generateQR()`: Validates input and updates QR display
- `_clearQR()`: Resets input and QR display

---

## 🎨 Customization Guide

### 1. Change App Colors

Edit the theme in `main.dart`:

```dart
theme: ThemeData(
  primarySwatch: Colors.indigo,  // Change to: Colors.blue, Colors.green, etc.
  useMaterial3: true,
),
```

### 2. Modify QR Size Options

Update the dropdown menu values:

```dart
DropdownButton<double>(
  items: const [
    DropdownMenuItem(value: 100, child: Text('Extra Small (100px)')),
    DropdownMenuItem(value: 150, child: Text('Small (150px)')),
    DropdownMenuItem(value: 220, child: Text('Medium (220px)')),
    DropdownMenuItem(value: 300, child: Text('Large (300px)')),
    DropdownMenuItem(value: 400, child: Text('Extra Large (400px)')),
  ],
  // ...
)
```

### 3. Change Language

Replace Indonesian text with your preferred language:

```dart
// Before
labelText: 'Masukkan Teks atau URL',
hintText: 'Contoh: https://example.com',

// After (English example)
labelText: 'Enter Text or URL',
hintText: 'Example: https://example.com',
```

### 4. Customize QR Code Appearance

Modify the `QrImageView` widget:

```dart
QrImageView(
  data: _qrData,
  version: QrVersions.auto,
  size: _qrSize,
  gapless: false,
  backgroundColor: Colors.white,      // Add background color
  foregroundColor: Colors.black,      // Change QR color
  errorCorrectionLevel: QrErrorCorrectLevel.H,  // Higher error correction
)
```

---

## 🏗️ Building for Production

### Android APK
```bash
flutter build apk --release
```
Output: `build/app/outputs/flutter-apk/app-release.apk`

### Android App Bundle (for Play Store)
```bash
flutter build appbundle --release
```
Output: `build/app/outputs/bundle/release/app-release.aab`

### iOS (macOS only)
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```
Output: `build/web/` folder

### Desktop
```bash
# Windows
flutter build windows --release

# macOS
flutter build macos --release

# Linux
flutter build linux --release
```

---

## 🧪 Testing

### Run all tests:
```bash
flutter test
```

### Run specific test file:
```bash
flutter test test/widget_test.dart
```

### Test coverage:
```bash
flutter test --coverage
```

---

## 🔮 Future Features Roadmap

### Planned Features for Version 2.0+

#### 1. **Share QR Code** 🔄
- Share QR code image to other apps (WhatsApp, Email, etc.)
- Implementation: Use `share_plus` package
- Estimated difficulty: Easy

#### 2. **Save to Gallery** 💾
- Save generated QR code as PNG/JPG to device
- Implementation: Use `image_gallery_saver` + `screenshot` packages
- Estimated difficulty: Medium

#### 3. **Dark Theme** 🌙
- Toggle between light and dark modes
- Implementation: ThemeMode with SharedPreferences
- Estimated difficulty: Easy

#### 4. **QR Code History** 📜
- Keep track of previously generated QR codes
- Implementation: Local database with `sqflite` or `hive`
- Estimated difficulty: Medium

#### 5. **Custom Colors** 🎨
- Allow users to customize QR code foreground/background colors
- Implementation: Color picker widget
- Estimated difficulty: Easy

#### 6. **Batch Generation** 📊
- Generate multiple QR codes from CSV or list
- Implementation: File picker + CSV parser
- Estimated difficulty: Hard

#### 7. **QR Scanner** 📷
- Add ability to scan existing QR codes
- Implementation: Use `mobile_scanner` package
- Estimated difficulty: Medium

---

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/AmazingFeature`
3. **Commit your changes**: `git commit -m 'Add some AmazingFeature'`
4. **Push to the branch**: `git push origin feature/AmazingFeature`
5. **Open a Pull Request**

### Coding Guidelines
- Follow [Flutter style guide](https://dart.dev/guides/language/effective-dart/style)
- Write clear, self-documenting code
- Add comments for complex logic
- Test your changes thoroughly
- Update documentation if needed

---

## 🐛 Troubleshooting

### Common Issues

**1. "flutter: command not found"**
- Solution: Make sure Flutter is added to your PATH. Run `flutter doctor` to check setup.

**2. Gradle build fails on Android**
- Solution: Update Gradle version in `android/build.gradle`
- Run: `cd android && ./gradlew clean`

**3. iOS build fails**
- Solution: Run `cd ios && pod install && cd ..`
- Make sure Xcode Command Line Tools are installed

**4. QR code not displaying**
- Solution: Check that input text is not empty
- Verify `qr_flutter` package is properly installed

**5. Hot reload not working**
- Solution: Try hot restart instead (Shift+R in Flutter DevTools)

---

## 📝 Code Examples

### Generate QR Code Programmatically

```dart
void generateQRCode(String data) {
  if (data.isEmpty) {
    print('Error: Data cannot be empty');
    return;
  }
  
  setState(() {
    _qrData = data;
  });
}
```

### Validate URL Input

```dart
bool isValidUrl(String url) {
  final urlPattern = RegExp(
    r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$',
  );
  return urlPattern.hasMatch(url);
}
```

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**nayrbryanGaming**
- GitHub: [@nayrbryanGaming](https://github.com/nayrbryanGaming)
- Project: [QR-CODE-GENERATOR](https://github.com/nayrbryanGaming/QR-CODE-GENERATOR)

---

## 🙏 Acknowledgments

- Built with ❤️ using [Flutter](https://flutter.dev)
- QR Code generation powered by [qr_flutter](https://pub.dev/packages/qr_flutter)
- Inspired by the need for simple, educational Flutter projects
- Thanks to the Flutter community for continuous support

---

## 📞 Support

If you encounter any issues or have questions:
- Open an issue on [GitHub Issues](https://github.com/nayrbryanGaming/QR-CODE-GENERATOR/issues)
- Check existing issues for solutions
- Read the [Flutter documentation](https://flutter.dev/docs)

---

## ⭐ Star This Project

If you find this project helpful, please give it a star on GitHub! It helps others discover the project and motivates continued development.

---

**Last Updated**: December 17, 2025  
**Version**: 1.0.0  
**Flutter SDK**: >=3.0.0 <4.0.0

