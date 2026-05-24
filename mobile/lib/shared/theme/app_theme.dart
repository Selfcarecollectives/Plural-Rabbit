import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Plural Rabbit's hex-based theme engine.
///
/// Design rules (Technical doc §16.5):
/// - All colors driven by active profile/system theme hex values
/// - No hardcoded UI colors except the defaults below
/// - Default: primary #6B3FA0, background #FAF8FF, text #1A1A2E
/// - Warm, paper-like aesthetic: off-white backgrounds, subtle shadows,
///   rounded corners on all cards
/// - Dark/light mode expressed through custom hex choices, not a toggle

class AppTheme {
  static const defaultPrimary = Color(0xFF6B3FA0);
  static const defaultBackground = Color(0xFFFAF8FF);
  static const defaultText = Color(0xFF1A1A2E);
  static const defaultSurface = Color(0xFFFFFFFF);
  static const defaultOnPrimary = Color(0xFFFFFFFF);

  /// Builds a [ThemeData] from a hex primary color string (e.g. '#6B3FA0').
  static ThemeData fromHex(String primaryHex) {
    final primary = _parseHex(primaryHex) ?? defaultPrimary;
    return _buildTheme(primary);
  }

  static ThemeData get defaultTheme => _buildTheme(defaultPrimary);

  static ThemeData _buildTheme(Color primary) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
      background: defaultBackground,
      surface: defaultSurface,
      primary: primary,
      onPrimary: defaultOnPrimary,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: defaultBackground,
      fontFamily: null, // system font — accessibility per spec
      cardTheme: CardThemeData(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: defaultSurface,
        shadowColor: Colors.black.withOpacity(0.1),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: defaultBackground,
        foregroundColor: defaultText,
        elevation: 0,
        centerTitle: false,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          selectedBackgroundColor: primary.withOpacity(0.2),
          selectedForegroundColor: primary,
        ),
      ),
      chipTheme: ChipThemeData(
        shape: const StadiumBorder(),
        backgroundColor: primary.withOpacity(0.1),
        labelStyle: TextStyle(color: primary),
      ),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
    );
  }

  static Color? _parseHex(String hex) {
    try {
      final clean = hex.replaceFirst('#', '');
      final full = clean.length == 6 ? 'FF$clean' : clean;
      return Color(int.parse(full, radix: 16));
    } catch (_) {
      return null;
    }
  }
}

// ---------------------------------------------------------------------------
// Riverpod provider for the current theme hex
// ---------------------------------------------------------------------------

final activeThemeHexProvider = StateProvider<String>((_) => '#6B3FA0');

final appThemeProvider = Provider<ThemeData>((ref) {
  final hex = ref.watch(activeThemeHexProvider);
  return AppTheme.fromHex(hex);
});
