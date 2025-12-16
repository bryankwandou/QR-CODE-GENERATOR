# QR Code Generator

A simple yet polished Flutter application for generating QR codes from text or URLs.

## Features

- ✅ Generate QR codes from any text or URL input
- ✅ Adjustable QR code size (Small, Medium, Large)
- ✅ Clean and intuitive user interface
- ✅ Input validation with helpful error messages
- ✅ Clear button to reset input
- ✅ Responsive design that works on various screen sizes
- ✅ Cross-platform support (Android, iOS, Web)

## Screenshots

(Add your app screenshots here)

## Getting Started

### Prerequisites

- Flutter SDK (version 3.0.0 or higher)
- Dart SDK (version 3.0.0 or higher)
- Android Studio / VS Code with Flutter extensions
- Android device or emulator / iOS device or simulator

### Installation

1. Clone this repository:
```bash
git clone https://github.com/nayrbryanGaming/QR-CODE-GENERATOR.git
cd QR-CODE-GENERATOR
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Dependencies

This project uses the following packages:

- **qr_flutter** (^4.0.0) - For generating and rendering QR codes
- **cupertino_icons** (^1.0.8) - iOS-style icons

## Project Structure

```
lib/
  └── main.dart          # Main entry point and UI implementation

The project follows a simple, beginner-friendly structure:
- `main.dart` contains all the app logic and UI
- Clean separation of concerns with StatefulWidget
- Easy to extend with new features
```

## How to Use

1. **Enter Text/URL**: Type any text or URL in the input field
2. **Select Size**: Choose your preferred QR code size from the dropdown (Small: 150px, Medium: 220px, Large: 300px)
3. **Generate**: Tap the "Generate QR" button to create your QR code
4. **Clear**: Use the "Clear" button to reset and start over

## Customization

### Changing Colors

Edit the theme in `main.dart`:
```dart
theme: ThemeData(
  primarySwatch: Colors.indigo, // Change to your preferred color
  useMaterial3: true,
),
```

### Changing QR Size Options

Modify the dropdown values in `main.dart`:
```dart
DropdownMenuItem(value: 150, child: Text('Kecil (150px)')),
DropdownMenuItem(value: 220, child: Text('Sedang (220px)')),
DropdownMenuItem(value: 300, child: Text('Besar (300px)')),
```

## Future Enhancements

Planned features for future versions:

- 📱 Share QR code to other apps
- 💾 Save QR code as image to gallery
- 🌙 Dark theme toggle
- 📜 History of generated QR codes
- 🎨 Customize QR code colors
- 🌍 Multi-language support

## Building for Release

### Android

```bash
flutter build apk --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

## Author

- **nayrbryanGaming** - [GitHub Profile](https://github.com/nayrbryanGaming)

## Acknowledgments

- Built with Flutter & Dart
- QR Code generation powered by qr_flutter package
- Created as a learning and demo project

---

**Note**: This is a learning project designed to demonstrate clean code structure and Flutter best practices. Feel free to fork and modify for your own needs!

