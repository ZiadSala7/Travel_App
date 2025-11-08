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

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Discover Beautiful Destinations`
  String get onborO {
    return Intl.message(
      'Discover Beautiful Destinations',
      name: 'onborO',
      desc: '',
      args: [],
    );
  }

  /// `Explore top travel spots around the world and find the perfect place for your next adventure effortlessly.`
  String get onborODes {
    return Intl.message(
      'Explore top travel spots around the world and find the perfect place for your next adventure effortlessly.',
      name: 'onborODes',
      desc: '',
      args: [],
    );
  }

  /// `Book Your Ideal Hotel`
  String get onborT {
    return Intl.message(
      'Book Your Ideal Hotel',
      name: 'onborT',
      desc: '',
      args: [],
    );
  }

  /// `Compare prices, read reviews, and reserve the best hotels that match your budget — all in one place.`
  String get onborTDes {
    return Intl.message(
      'Compare prices, read reviews, and reserve the best hotels that match your budget — all in one place.',
      name: 'onborTDes',
      desc: '',
      args: [],
    );
  }

  /// `Rent a Car Anytime`
  String get onborTh {
    return Intl.message(
      'Rent a Car Anytime',
      name: 'onborTh',
      desc: '',
      args: [],
    );
  }

  /// `Choose from a wide range of cars and enjoy smooth, flexible transportation wherever you travel.`
  String get onborThDes {
    return Intl.message(
      'Choose from a wide range of cars and enjoy smooth, flexible transportation wherever you travel.',
      name: 'onborThDes',
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
