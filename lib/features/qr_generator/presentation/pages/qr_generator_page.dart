// lib/features/qr_generator/presentation/pages/qr_generator_page.dart
import 'package:flutter/material.dart';
import '../widgets/qr_display.dart';

class QrGeneratorPage extends StatefulWidget {
  const QrGeneratorPage({super.key});

  @override
  State<QrGeneratorPage> createState() => _QrGeneratorPageState();
}

class _QrGeneratorPageState extends State<QrGeneratorPage> {
  final TextEditingController _controller = TextEditingController();
  String? _dataToEncode;
  double _size = 220; // default medium size
  bool _showError = false;
  String _errorMessage = '';

  final List<double> _sizes = [150, 220, 300];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _generate() {
    final text = _controller.text.trim();
    if (text.isEmpty) {
      setState(() {
        _showError = true;
        _errorMessage = 'Please enter text or URL to generate a QR code.';
        _dataToEncode = null;
      });
      return;
    }

    setState(() {
      _showError = false;
      _errorMessage = '';
      _dataToEncode = text;
    });

    // Dismiss keyboard
    FocusScope.of(context).unfocus();
  }

  void _clear() {
    _controller.clear();
    setState(() {
      _dataToEncode = null;
      _showError = false;
      _errorMessage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Generator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(), // dismiss keyboard
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8),
                  const Text(
                    'Enter any text or URL below and tap Generate.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _controller,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Text or URL',
                      hintText: 'https://example.com or any text',
                      suffixIcon: IconButton(
                        onPressed: _clear,
                        icon: const Icon(Icons.clear),
                        tooltip: 'Clear',
                      ),
                    ),
                    onSubmitted: (_) => _generate(),
                  ),
                  if (_showError) ...[
                    const SizedBox(height: 8),
                    Text(
                      _errorMessage,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Text('Size:'),
                      const SizedBox(width: 12),
                      DropdownButton<double>(
                        value: _size,
                        items: _sizes
                            .map((s) => DropdownMenuItem(
                                  value: s,
                                  child: Text(s.toInt().toString()),
                                ))
                            .toList(),
                        onChanged: (v) {
                          if (v == null) return;
                          setState(() => _size = v);
                        },
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: _generate,
                        child: const Text('Generate'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _dataToEncode == null
                          ? Column(
                              key: const ValueKey('placeholder'),
                              children: [
                                const Icon(
                                  Icons.qr_code_2,
                                  size: 80,
                                  color: Colors.grey,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Your QR code will appear here',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ],
                            )
                          : QrDisplay(
                              key: ValueKey(_dataToEncode),
                              data: _dataToEncode!,
                              size: _size,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

