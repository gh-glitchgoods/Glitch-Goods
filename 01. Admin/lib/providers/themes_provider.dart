import 'package:gg_admin/themes/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeSettingsNotifier extends StateNotifier<ThemeName> {
  final SharedPreferences prefs;

  ThemeSettingsNotifier(this.prefs) : super(ThemeName.forestCanopy) {
    _loadThemePreferences();
  }

  Future<void> _storeThemePreferences(ThemeName currentTheme) async {
    if (appThemes[currentTheme] != null) {
      await prefs.setString(
          'CurrentTheme', appThemes[currentTheme]!.identifier);
    } else {
      prefs.setString(
          'CurrentTheme', appThemes[ThemeName.forestCanopy]!.identifier);
    }
  }

  void _loadThemePreferences() {
    String? storedThemeId = prefs.getString('CurrentTheme');

    if (storedThemeId == null) {
      setNewTheme(ThemeName.royalVelvet);
      return;
    }
    try {
      ThemeName currentTheme = appThemes.entries.firstWhere((item) {
        return item.value.identifier == storedThemeId;
      }).key;
      setNewTheme(currentTheme);
    } catch (e) {
      setNewTheme(ThemeName.royalVelvet);
    }
  }

  void setNewTheme(ThemeName newTheme) {
    state = newTheme;
    _storeThemePreferences(newTheme);
  }
}

final themeProvider = StateNotifierProvider<ThemeSettingsNotifier, ThemeName>(
  (ref) {
    final prefs = ref.watch(sharedPreferencesProvider);
    return ThemeSettingsNotifier(prefs);
  },
);

final colorSchemesProvider = Provider<Map<ThemeMode, ColorScheme>>(
  (ref) {
    final currentTheme = ref.watch(themeProvider);

    final theme = appThemes[currentTheme]!;
    return {
      ThemeMode.light: theme.colorScheme.light,
      ThemeMode.dark: theme.colorScheme.dark
    };
  },
);

final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) {
    throw UnimplementedError();
  },
);
