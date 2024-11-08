import 'dart:ui' as ui;

import 'data/form_factor.dart';
import 'data/typography.dart';
import 'theme.dart';
import 'package:flutter/widgets.dart';

enum AppThemeColorMode {
  light,
  grey,
  dark,
}

// Updates automatically the [AppTheme] regarding the current [MediaQuery],
// unless the color mode is overridden or set explicitly through the app settings.
class AppResponsiveTheme extends StatelessWidget {
  const AppResponsiveTheme({
    Key? key,
    required this.child,
    this.colorMode,
    this.formFactor,
  }) : super(key: key);

  final AppThemeColorMode? colorMode;
  final AppFormFactor? formFactor;
  final Widget child;

  static AppThemeColorMode colorModeOf(BuildContext context) {
    final platformBrightness = MediaQuery.platformBrightnessOf(context);
    final highContrast = MediaQuery.highContrastOf(context);
    if (platformBrightness == ui.Brightness.dark || highContrast) {
      return AppThemeColorMode.dark;
    }

    return AppThemeColorMode.light;
  }

  /// Determines the form factor based on the screen width.
  static AppFormFactor formFactorOf(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    if (mediaQuery.size.width < 400) {
      return AppFormFactor.small;
    }
    return AppFormFactor.medium;
  }

  @override
  Widget build(BuildContext context) {
    // Start with a base theme
    var theme = AppThemeData.normal();

    // Determines color mode based on app settings or device brightness
    final colorMode = this.colorMode ?? colorModeOf(context);
    switch (colorMode) {
      case AppThemeColorMode.dark:
        theme = theme.withColors(AppColorsData.dark());
        break;
      case AppThemeColorMode.grey:
        theme = theme.withColors(AppColorsData.grey());
        break;
      case AppThemeColorMode.light:
      default:
        theme = theme.withColors(AppColorsData.light());
        break;
    }

    // Set form factor based on device characteristics
    var formFactor = this.formFactor ?? formFactorOf(context);
    theme = theme.withFormFactor(formFactor);
    if (formFactor == AppFormFactor.small) {
      theme = theme.withTypography(AppTypographyData.normal());
    }

    return AppTheme(
      data: theme,
      child: child,
    );
  }
}
