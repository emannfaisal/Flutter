import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() {
  runApp(const Lab7App());
}

class Lab7App extends StatefulWidget {
  const Lab7App({super.key});

  @override
  State<Lab7App> createState() => _Lab7AppState();
}

class _Lab7AppState extends State<Lab7App> {
  late Color _currentColor;
  late double _currentBorderRadius;
  final Color _originalColor = Colors.deepPurple;
  final double _originalBorderRadius = 12;
  final double _previewBaseWidth = 200;
  final double _previewBaseHeight = 120;
  double value = 0.0;
  double redValue = 255.0;
  double greenValue = 124.0;
  double blueValue = 77.0;
  double previewScale = 1.0;

  Color get rgbPreviewColor => Color.fromARGB(
    255,
    redValue.toInt(),
    greenValue.toInt(),
    blueValue.toInt(),
  );

  String get hexCode =>
      '#${redValue.toInt().toRadixString(16).padLeft(2, '0').toUpperCase()}${greenValue.toInt().toRadixString(16).padLeft(2, '0').toUpperCase()}${blueValue.toInt().toRadixString(16).padLeft(2, '0').toUpperCase()}';

  @override
  void initState() {
    super.initState();
    _currentColor = _originalColor;
    _currentBorderRadius = _originalBorderRadius;
  }

  void _changeToRandomColor() {
    final random = Random();
    final colors = Colors.primaries;
    setState(() {
      _currentColor = colors[random.nextInt(colors.length)];
    });
  }

  void _toggleBorderRadius() {
    setState(() {
      _currentBorderRadius = _currentBorderRadius == 0 ? 100 : 0;
    });
  }

  void _reset() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Resetting...')),
    );
    setState(() {
      _currentColor = _originalColor;
      _currentBorderRadius = _originalBorderRadius;
    });
  }

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
  home: Scaffold(
    body: SingleChildScrollView( // ✅ added
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: _changeToRandomColor,
                onDoubleTap: _toggleBorderRadius,
                onLongPress: _reset,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: _currentColor,
                    borderRadius: BorderRadius.circular(_currentBorderRadius),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Column(
            children: [
              Text(
                'Value: ${value.toStringAsFixed(1)}',
                style: const TextStyle(fontSize: 18),
              ),
              Slider(
                min: 0.0,
                max: 100.0,
                divisions: 10,
                value: value,
                onChanged: (newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
              ),
              CupertinoSlider(
                min: 0.0,
                max: 100.0,
                divisions: 10,
                value: value,
                onChanged: (newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 40),
          Column(
            children: [
              GestureDetector(
                onLongPress: () {
                  debugPrint('Copied Hex: $hexCode');
                },
                onHorizontalDragUpdate: (details) {
                  setState(() {
                    previewScale =
                        (previewScale + (details.primaryDelta ?? 0) / 300)
                            .clamp(0.5, 2.0)
                            .toDouble();
                  });
                },
                child: Container(
                  width: _previewBaseWidth * previewScale,
                  height: _previewBaseHeight * previewScale,
                  color: rgbPreviewColor,
                ),
              ),
              const SizedBox(height: 12),
              Text('Hex: $hexCode'),
              Slider(
                min: 0.0,
                max: 255.0,
                divisions: 255,
                value: redValue,
                label: 'R ${redValue.toInt()}',
                activeColor: Colors.red,
                onChanged: (newValue) {
                  setState(() {
                    redValue = newValue;
                  });
                },
              ),
              Slider(
                min: 0.0,
                max: 255.0,
                divisions: 255,
                value: greenValue,
                label: 'G ${greenValue.toInt()}',
                activeColor: Colors.green,
                onChanged: (newValue) {
                  setState(() {
                    greenValue = newValue;
                  });
                },
              ),
              Slider(
                min: 0.0,
                max: 255.0,
                divisions: 255,
                value: blueValue,
                label: 'B ${blueValue.toInt()}',
                activeColor: Colors.blue,
                onChanged: (newValue) {
                  setState(() {
                    blueValue = newValue;
                  });
                },
              ),
            ],
          )
        ],
      ),
    ),
  ),
);
  }
}