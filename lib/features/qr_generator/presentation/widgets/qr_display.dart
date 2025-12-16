// lib/features/qr_generator/presentation/widgets/qr_display.dart
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrDisplay extends StatelessWidget {
  final String data;
  final double size;

  const QrDisplay({super.key, required this.data, required this.size});

  @override
  Widget build(BuildContext context) {
    try {
      return Container(
        padding: const EdgeInsets.all(8),
        color: Colors.white,
        child: QrImageView(
          data: data,
          version: QrVersions.auto,
          size: size,
          gapless: false,
          errorStateBuilder: (cxt, err) => SizedBox(
            width: size,
            height: size,
            child: Center(
              child: Text(
                'Error generating QR',
                style: TextStyle(color: Colors.red[700]),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    } catch (e) {
      return SizedBox(
        width: size,
        height: size,
        child: Center(
          child: Text(
            'Error: ${e.toString()}',
            style: TextStyle(color: Colors.red[700]),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
  }
}

