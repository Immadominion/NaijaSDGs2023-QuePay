import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyLargeBlack9000116 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
        fontSize: 16.fSize,
      );
  static get bodyLargeBlack90001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
      );
  static get bodyLargeBlue800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue800,
      );
  static get bodySmallGray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get bodySmallIndigoA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.indigoA70001,
      );
  // Display text style
  static get displayMedium50 => theme.textTheme.displayMedium!.copyWith(
        fontSize: 50.fSize,
      );
  // Headline text style
  static get headlineLargeBlack90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get headlineSmallBlack90001Bold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallBlue800 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blue800,
      );
  static get headlineSmallGray400 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray400,
      );
  static get headlineSmallIndigoA70001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigoA70001,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallIndigoA70001_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigoA70001,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeBlack90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get labelLargeBlack90001Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.25),
      );
  static get labelLargeGray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40001,
      );
  static get labelLargeIndigoA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA70001,
      );
  // Lato text style
  static get latoOnErrorContainer => TextStyle(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 70.fSize,
        fontWeight: FontWeight.w600,
      ).lato;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.6),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack90001Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.7),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90001Medium_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.53),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90001SemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack90001SemiBold_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlue800 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue800,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlue800SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue800,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeIndigoA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA70001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnErrorContainerMedium =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.4),
      );
  static get titleMediumBlack9000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.65),
        fontSize: 16.fSize,
      );
  static get titleMediumBlack9000116_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.5),
        fontSize: 16.fSize,
      );
  static get titleMediumBlack90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumBluegray90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 16.fSize,
      );
  static get titleMediumGray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray400,
        fontSize: 16.fSize,
      );
  static get titleMediumGreen700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green700,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumRed700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red700,
        fontSize: 16.fSize,
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }
}
