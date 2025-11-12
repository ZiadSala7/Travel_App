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

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `Full name`
  String get fullName {
    return Intl.message('Full name', name: 'fullName', desc: '', args: []);
  }

  /// `Full name :`
  String get enterName {
    return Intl.message('Full name :', name: 'enterName', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Your phone number :`
  String get phoneNum {
    return Intl.message(
      'Your phone number :',
      name: 'phoneNum',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone :`
  String get entrPhone {
    return Intl.message(
      'Enter your phone :',
      name: 'entrPhone',
      desc: '',
      args: [],
    );
  }

  /// `Password :`
  String get password {
    return Intl.message('Password :', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password :`
  String get confirmPass {
    return Intl.message(
      'Confirm Password :',
      name: 'confirmPass',
      desc: '',
      args: [],
    );
  }

  /// `**********`
  String get enterPassword {
    return Intl.message(
      '**********',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forgetPass {
    return Intl.message(
      'Forget Password ?',
      name: 'forgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to send reset link.`
  String get forgPassDes {
    return Intl.message(
      'Enter your email to send reset link.',
      name: 'forgPassDes',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `Let's Get Started`
  String get letsStart {
    return Intl.message(
      'Let\'s Get Started',
      name: 'letsStart',
      desc: '',
      args: [],
    );
  }

  /// `Continue as a Guest`
  String get guest {
    return Intl.message(
      'Continue as a Guest',
      name: 'guest',
      desc: '',
      args: [],
    );
  }

  /// `Continue with login`
  String get continueLogin {
    return Intl.message(
      'Continue with login',
      name: 'continueLogin',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get Search {
    return Intl.message('Search', name: 'Search', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Favourites`
  String get favourites {
    return Intl.message('Favourites', name: 'favourites', desc: '', args: []);
  }

  /// `Hotels`
  String get hotel {
    return Intl.message('Hotels', name: 'hotel', desc: '', args: []);
  }

  /// `Cars reserve`
  String get car {
    return Intl.message('Cars reserve', name: 'car', desc: '', args: []);
  }

  /// `Flights`
  String get flights {
    return Intl.message('Flights', name: 'flights', desc: '', args: []);
  }

  /// `Choose your service`
  String get chooseService {
    return Intl.message(
      'Choose your service',
      name: 'chooseService',
      desc: '',
      args: [],
    );
  }

  /// `Special Offers`
  String get offers {
    return Intl.message('Special Offers', name: 'offers', desc: '', args: []);
  }

  /// `Best Offers`
  String get bestOffers {
    return Intl.message('Best Offers', name: 'bestOffers', desc: '', args: []);
  }

  /// `See All`
  String get seeAll {
    return Intl.message('See All', name: 'seeAll', desc: '', args: []);
  }

  /// `Best Hotels`
  String get bestHotel {
    return Intl.message('Best Hotels', name: 'bestHotel', desc: '', args: []);
  }

  /// `My trips`
  String get rehlaty {
    return Intl.message('My trips', name: 'rehlaty', desc: '', args: []);
  }

  /// `Travel`
  String get travel {
    return Intl.message('Travel', name: 'travel', desc: '', args: []);
  }

  /// `App`
  String get app {
    return Intl.message('App', name: 'app', desc: '', args: []);
  }

  /// `Select your car`
  String get selectCar {
    return Intl.message(
      'Select your car',
      name: 'selectCar',
      desc: '',
      args: [],
    );
  }

  /// `Select Car Type`
  String get typeOfCar {
    return Intl.message(
      'Select Car Type',
      name: 'typeOfCar',
      desc: '',
      args: [],
    );
  }

  /// `Booking Service Type`
  String get bookCarType {
    return Intl.message(
      'Booking Service Type',
      name: 'bookCarType',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message('City', name: 'city', desc: '', args: []);
  }

  /// `Country`
  String get country {
    return Intl.message('Country', name: 'country', desc: '', args: []);
  }

  /// `Country of service`
  String get cntryServ {
    return Intl.message(
      'Country of service',
      name: 'cntryServ',
      desc: '',
      args: [],
    );
  }

  /// `City of service`
  String get ctyServ {
    return Intl.message('City of service', name: 'ctyServ', desc: '', args: []);
  }

  /// `Pick-up Location`
  String get pickUpLoc {
    return Intl.message(
      'Pick-up Location',
      name: 'pickUpLoc',
      desc: '',
      args: [],
    );
  }

  /// `Drop-off Location`
  String get dropOffLoc {
    return Intl.message(
      'Drop-off Location',
      name: 'dropOffLoc',
      desc: '',
      args: [],
    );
  }

  /// `Pick-up date`
  String get pickUpDate {
    return Intl.message('Pick-up date', name: 'pickUpDate', desc: '', args: []);
  }

  /// `Pick-up time`
  String get pickUpTime {
    return Intl.message('Pick-up time', name: 'pickUpTime', desc: '', args: []);
  }

  /// `Drop-off date`
  String get dropOffDate {
    return Intl.message(
      'Drop-off date',
      name: 'dropOffDate',
      desc: '',
      args: [],
    );
  }

  /// `Drop-off time`
  String get dropOffTime {
    return Intl.message(
      'Drop-off time',
      name: 'dropOffTime',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get currency {
    return Intl.message('Currency', name: 'currency', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `WhatsApp`
  String get wts {
    return Intl.message('WhatsApp', name: 'wts', desc: '', args: []);
  }

  // skipped getter for the '' key

  /// `LogOut`
  String get logout {
    return Intl.message('LogOut', name: 'logout', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message('Privacy Policy', name: 'privacy', desc: '', args: []);
  }

  /// `Change your password`
  String get changePass {
    return Intl.message(
      'Change your password',
      name: 'changePass',
      desc: '',
      args: [],
    );
  }

  /// `Who we are?`
  String get whoWe {
    return Intl.message('Who we are?', name: 'whoWe', desc: '', args: []);
  }

  /// `Contact`
  String get contact {
    return Intl.message('Contact', name: 'contact', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
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
