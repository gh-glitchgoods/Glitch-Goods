import 'package:gg_admin/providers/themes_provider.dart';
import 'package:gg_admin/screens/home/home_screen.dart';
import 'package:gg_admin/themes/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const GGAdmin(),
    ),
  );
}

class GGAdmin extends ConsumerWidget {
  const GGAdmin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorSchemes = ref.watch(colorSchemesProvider);
    return MaterialApp(
      theme: AppTheme.lightTheme(colorSchemes[ThemeMode.light]!),
      darkTheme: AppTheme.darkTheme(colorSchemes[ThemeMode.dark]!),
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
