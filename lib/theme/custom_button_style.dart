import 'dart:ui';
import 'package:repinovich_s_applicationmobile/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration
      get gradientOnPrimaryContainerToOnPrimaryContainerDecoration =>
          BoxDecoration(
            borderRadius: BorderRadius.circular(17.h),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.errorContainer.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                theme.colorScheme.onPrimaryContainer.withOpacity(0),
              ],
            ),
          );
  static BoxDecoration
      get gradientOnPrimaryContainerToOnPrimaryContainerTL17Decoration =>
          BoxDecoration(
            borderRadius: BorderRadius.circular(17.h),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.errorContainer.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 2),
              colors: [
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                theme.colorScheme.onPrimaryContainer.withOpacity(0),
              ],
            ),
          );
  static BoxDecoration get gradientPrimaryToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(17.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 2),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withOpacity(0),
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
