// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login to your account`
  String get logToAccount {
    return Intl.message(
      'Login to your account',
      name: 'logToAccount',
      desc: '',
      args: [],
    );
  }

  /// `Forget Your Password?`
  String get forgYourPass {
    return Intl.message(
      'Forget Your Password?',
      name: 'forgYourPass',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Create Account?`
  String get createAccountQues {
    return Intl.message(
      'Create Account?',
      name: 'createAccountQues',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Or Continue With`
  String get continueWith {
    return Intl.message(
      'Or Continue With',
      name: 'continueWith',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get facebook {
    return Intl.message('Facebook', name: 'facebook', desc: '', args: []);
  }

  /// `Google`
  String get google {
    return Intl.message('Google', name: 'google', desc: '', args: []);
  }

  /// `Forgot password?`
  String get forgPass {
    return Intl.message(
      'Forgot password?',
      name: 'forgPass',
      desc: '',
      args: [],
    );
  }

  /// `Select which contact details should we use to reset your password`
  String get forgPassViewDesc {
    return Intl.message(
      'Select which contact details should we use to reset your password',
      name: 'forgPassViewDesc',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email :`
  String get enterEmail {
    return Intl.message(
      'Enter your email :',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Sign Up For Free`
  String get signUp {
    return Intl.message('Sign Up For Free', name: 'signUp', desc: '', args: []);
  }

  /// `Already Have an Account?`
  String get alreadyHaveAcc {
    return Intl.message(
      'Already Have an Account?',
      name: 'alreadyHaveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter 4-digit\nVerification code`
  String get codeDigits {
    return Intl.message(
      'Enter 4-digit\\nVerification code',
      name: 'codeDigits',
      desc: '',
      args: [],
    );
  }

  /// `Code send to +6282045**** . This code will expired in 01:30`
  String get codeDesc {
    return Intl.message(
      'Code send to +6282045**** . This code will expired in 01:30',
      name: 'codeDesc',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get backTxt {
    return Intl.message('Back', name: 'backTxt', desc: '', args: []);
  }

  /// `Try Order`
  String get tryOrder {
    return Intl.message('Try Order', name: 'tryOrder', desc: '', args: []);
  }

  /// `Reset your password\nhere`
  String get resetPassHere {
    return Intl.message(
      'Reset your password\\nhere',
      name: 'resetPassHere',
      desc: '',
      args: [],
    );
  }

  /// `Now you can reset your password to another one, Don't forget it.`
  String get resetPassDesc {
    return Intl.message(
      'Now you can reset your password to another one, Don\'t forget it.',
      name: 'resetPassDesc',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Fill in your bio to get started`
  String get fillIn {
    return Intl.message(
      'Fill in your bio to get started',
      name: 'fillIn',
      desc: '',
      args: [],
    );
  }

  /// `This data will be displayed in your account profile for security`
  String get commonDesc {
    return Intl.message(
      'This data will be displayed in your account profile for security',
      name: 'commonDesc',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Upload Your Photo Profile`
  String get uploadPhoto {
    return Intl.message(
      'Upload Your Photo Profile',
      name: 'uploadPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Set Your Location `
  String get location {
    return Intl.message(
      'Set Your Location ',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  /// `Last Name`
  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  /// `Mobile Number`
  String get mobileNum {
    return Intl.message('Mobile Number', name: 'mobileNum', desc: '', args: []);
  }

  /// `Your Location`
  String get yourLocation {
    return Intl.message(
      'Your Location',
      name: 'yourLocation',
      desc: '',
      args: [],
    );
  }

  /// `Set Location`
  String get setLocation {
    return Intl.message(
      'Set Location',
      name: 'setLocation',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
