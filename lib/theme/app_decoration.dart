import 'package:flutter/material.dart';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberToDeepOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.amber300,
            appTheme.deepOrangeA100,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToDeepOrange => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.gray300,
            appTheme.gray300,
            appTheme.deepOrange50,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.63),
          colors: [
            appTheme.gray50,
            appTheme.gray50.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorToOrangeA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            theme.colorScheme.onError,
            appTheme.orangeA200,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.51),
          end: Alignment(1.58, 0.51),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer1 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.09),
          end: Alignment(0.5, 0.83),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
            appTheme.orange100,
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer2 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 2.39),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer3 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.1),
          end: Alignment(0.5, 2.29),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.whiteA700,
            theme.colorScheme.onPrimaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer4 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.5),
          end: Alignment(0.5, 1.59),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer5 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1.59),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToBlue => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        gradient: LinearGradient(
          begin: Alignment(-0.5, 1.54),
          end: Alignment(1.33, -0.12),
          colors: [
            appTheme.orange300,
            appTheme.blue50,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToBlue50 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        gradient: LinearGradient(
          begin: Alignment(-1.27, 2.04),
          end: Alignment(1.33, -0.12),
          colors: [
            appTheme.orange300,
            appTheme.orange600,
            appTheme.blue50,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToBlue501 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.5, 1.54),
          end: Alignment(1.33, -0.12),
          colors: [
            appTheme.orange30001,
            appTheme.blue50,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToBlue502 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        gradient: LinearGradient(
          begin: Alignment(-0.5, 1.54),
          end: Alignment(1.33, -0.12),
          colors: [
            appTheme.orange30001,
            appTheme.blue50,
          ],
        ),
      );
  static BoxDecoration get gradientOrangeToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.orange10001,
            appTheme.deepOrange200,
            appTheme.pink30001,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToAmberA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.pink300,
            appTheme.amberA200,
          ],
        ),
      );
  static BoxDecoration get gradientSecondaryContainerToYellow => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.09, 1.98),
          end: Alignment(1.33, -0.12),
          colors: [
            theme.colorScheme.secondaryContainer,
            appTheme.yellow50,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        70.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL36 => BorderRadius.vertical(
        bottom: Radius.circular(36.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder45 => BorderRadius.circular(
        45.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
