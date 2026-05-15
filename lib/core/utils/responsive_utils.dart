import 'package:flutter/material.dart';

/// Responsive utility class for handling different screen sizes
class ResponsiveUtils {
  /// Breakpoints for different device sizes
  static const double mobileMax = 480.0;
  static const double tabletMin = 481.0;
  static const double tabletMax = 768.0;
  static const double desktopMin = 769.0;

  /// Get screen width
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Get screen height
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Check if current device is mobile
  static bool isMobile(BuildContext context) {
    return getScreenWidth(context) <= mobileMax;
  }

  /// Check if current device is tablet
  static bool isTablet(BuildContext context) {
    final width = getScreenWidth(context);
    return width >= tabletMin && width <= tabletMax;
  }

  /// Check if current device is desktop
  static bool isDesktop(BuildContext context) {
    return getScreenWidth(context) >= desktopMin;
  }

  /// Get responsive width based on screen size
  static double getResponsiveWidth(BuildContext context, double mobileWidth, double tabletWidth, double desktopWidth) {
    if (isMobile(context)) return mobileWidth;
    if (isTablet(context)) return tabletWidth;
    return desktopWidth;
  }

  /// Get responsive height based on screen size
  static double getResponsiveHeight(BuildContext context, double mobileHeight, double tabletHeight, double desktopHeight) {
    if (isMobile(context)) return mobileHeight;
    if (isTablet(context)) return tabletHeight;
    return desktopHeight;
  }

  /// Scale font size based on screen width
  static double getResponsiveFontSize(BuildContext context, double baseSize) {
    final screenWidth = getScreenWidth(context);
    // Scale factor: adjust based on your design requirements
    double scaleFactor = screenWidth / 375.0; // Base design on iPhone 14 width
    scaleFactor = scaleFactor.clamp(0.8, 1.5); // Limit scaling range
    return baseSize * scaleFactor;
  }

  /// Get responsive padding based on screen size
  static EdgeInsets getResponsivePadding(BuildContext context) {
    if (isMobile(context)) {
      return const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
    } else if (isTablet(context)) {
      return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
    }
    return const EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  }

  /// Get responsive margin based on screen size
  static EdgeInsets getResponsiveMargin(BuildContext context) {
    if (isMobile(context)) {
      return const EdgeInsets.symmetric(horizontal: 12, vertical: 8);
    } else if (isTablet(context)) {
      return const EdgeInsets.symmetric(horizontal: 16, vertical: 12);
    }
    return const EdgeInsets.symmetric(horizontal: 24, vertical: 16);
  }

  /// Get responsive spacing between widgets
  static double getResponsiveSpacing(BuildContext context) {
    if (isMobile(context)) return 12.0;
    if (isTablet(context)) return 16.0;
    return 20.0;
  }

  /// Get responsive border radius
  static double getResponsiveRadius(BuildContext context) {
    if (isMobile(context)) return 12.0;
    if (isTablet(context)) return 16.0;
    return 20.0;
  }

  /// Get responsive icon size
  static double getResponsiveIconSize(BuildContext context, double baseSize) {
    return getResponsiveFontSize(context, baseSize);
  }

  /// Calculate responsive width percentage
  static double getResponsiveWidthPercentage(BuildContext context, double percentage) {
    return getScreenWidth(context) * (percentage / 100);
  }

  /// Calculate responsive height percentage
  static double getResponsiveHeightPercentage(BuildContext context, double percentage) {
    return getScreenHeight(context) * (percentage / 100);
  }
}

/// Extension on BuildContext for easier access to responsive utilities
extension ResponsiveContext on BuildContext {
  double get screenWidth => ResponsiveUtils.getScreenWidth(this);
  double get screenHeight => ResponsiveUtils.getScreenHeight(this);
  bool get isMobile => ResponsiveUtils.isMobile(this);
  bool get isTablet => ResponsiveUtils.isTablet(this);
  bool get isDesktop => ResponsiveUtils.isDesktop(this);
  EdgeInsets get responsivePadding => ResponsiveUtils.getResponsivePadding(this);
  EdgeInsets get responsiveMargin => ResponsiveUtils.getResponsiveMargin(this);
  double get responsiveSpacing => ResponsiveUtils.getResponsiveSpacing(this);
  double get responsiveRadius => ResponsiveUtils.getResponsiveRadius(this);
}