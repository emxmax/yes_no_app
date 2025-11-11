import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.green,
  Colors.red,
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'Color debe ser entre 0 y ${_colorThemes.length - 1}',
      );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
