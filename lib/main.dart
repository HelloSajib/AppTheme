import 'package:apptheme/core/extensions/theme_extension.dart';
import 'package:apptheme/core/theme/app_theme.dart';
import 'package:apptheme/core/theme/theme_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Theme Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: const HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
    
    // Watch the current theme mode to update UI
    final currentThemeMode = ref.watch(themeModeProvider);
    
    // Read the notifier to perform actions
    final themeController = ref.read(themeModeProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Mode Demo"),
        backgroundColor: context.colors.primary,
        foregroundColor: context.colors.surface,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Theme: ${currentThemeMode.name.toUpperCase()}',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: context.colors.primary,
                  ),
            ),
            const SizedBox(height: 30),
            // Example using context.colors
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colors.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'This box uses secondary color',
                style: TextStyle(color: context.colors.surface),
              ),
            ),
            const SizedBox(height: 40),
            const Text("Switch Theme:"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ThemeButton(
                  title: 'Light',
                  isActive: currentThemeMode == ThemeMode.light,
                  onTap: () => themeController.setLight(),
                ),
                const SizedBox(width: 10),
                _ThemeButton(
                  title: 'Dark',
                  isActive: currentThemeMode == ThemeMode.dark,
                  onTap: () => themeController.setDark(),
                ),
                const SizedBox(width: 10),
                _ThemeButton(
                  title: 'System',
                  isActive: currentThemeMode == ThemeMode.system,
                  onTap: () => themeController.setSystem(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ThemeButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;

  const _ThemeButton({
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive ? context.colors.primary : null,
        foregroundColor: isActive ? context.colors.surface : null,
      ),
      child: Text(title),
    );
  }
}
