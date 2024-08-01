import 'package:rent_app/logic/common/color_utils.dart';
import '../common_libs.dart';

class AppColors {
  /// Common
  final Color primaryColor = Colors.blue[400]!;
  final Color onPrimaryColor = Colors.white;
  final Color secondaryColor = Colors.blue[100]!;
  final Color onSecondaryColor = Colors.white;
  final Color backgroundColor = Colors.white;
  final Color blackColor = Colors.black;
  final Color greyMediumColor = const Color(0xFF00858585);
  final Color whiteColor = Colors.white;
  final Color errorColor = Color(0xFF00E13F32);
  final Color onErrorColor = Colors.white;

  final bool isDark = false;

  Color shift(Color c, double d) =>
      ColorUtils.shiftHsl(c, d * (isDark ? -1 : 1));

  ThemeData getThemeData() {
    /// Create a TextTheme and ColorScheme, that we can use to generate ThemeData
    TextTheme textTheme =
        (isDark ? ThemeData.dark() : ThemeData.light()).textTheme;
    ColorScheme colorScheme = ColorScheme(
      // Map our custom theme to the Material ColorScheme
      brightness: isDark ? Brightness.dark : Brightness.light,
      primary: primaryColor,
      onPrimary: onPrimaryColor,
      secondary: secondaryColor,
      onSecondary: onSecondaryColor,
      error: errorColor,
      onError: onErrorColor,
      surface: backgroundColor,
      onSurface: blackColor,
    );

    /// Now that we have ColorScheme and TextTheme, we can create the ThemeData
    /// Also add on some extra properties that ColorScheme seems to miss
    var theme =
        ThemeData.from(textTheme: textTheme, colorScheme: colorScheme).copyWith(
      textSelectionTheme: TextSelectionThemeData(cursorColor: primaryColor),
      highlightColor: primaryColor,
    );

    /// Return the themeData which MaterialApp can now use
    return theme;
  }
}
