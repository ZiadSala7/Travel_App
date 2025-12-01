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
  String get asAGuest {
    return Intl.message(
      'Continue as a Guest',
      name: 'asAGuest',
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

  /// `Best Cars`
  String get bestcars {
    return Intl.message('Best Cars', name: 'bestcars', desc: '', args: []);
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

  /// `Eng`
  String get langChanger {
    return Intl.message('Eng', name: 'langChanger', desc: '', args: []);
  }

  /// `WhatsApp`
  String get wts {
    return Intl.message('WhatsApp', name: 'wts', desc: '', args: []);
  }

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

  /// `Enter your password`
  String get entrPass {
    return Intl.message(
      'Enter your password',
      name: 'entrPass',
      desc: '',
      args: [],
    );
  }

  /// `Number of travellers - Class`
  String get dialogTC {
    return Intl.message(
      'Number of travellers - Class',
      name: 'dialogTC',
      desc: '',
      args: [],
    );
  }

  /// `Adults`
  String get adults {
    return Intl.message('Adults', name: 'adults', desc: '', args: []);
  }

  /// `Children`
  String get children {
    return Intl.message('Children', name: 'children', desc: '', args: []);
  }

  /// `Babies`
  String get baby {
    return Intl.message('Babies', name: 'baby', desc: '', args: []);
  }

  /// `Class`
  String get selectClass {
    return Intl.message('Class', name: 'selectClass', desc: '', args: []);
  }

  /// `From :`
  String get from {
    return Intl.message('From :', name: 'from', desc: '', args: []);
  }

  /// `To :`
  String get to {
    return Intl.message('To :', name: 'to', desc: '', args: []);
  }

  /// `Destination:`
  String get destination {
    return Intl.message(
      'Destination:',
      name: 'destination',
      desc: '',
      args: [],
    );
  }

  /// `Departure:`
  String get departure {
    return Intl.message('Departure:', name: 'departure', desc: '', args: []);
  }

  /// `Select Date`
  String get date {
    return Intl.message('Select Date', name: 'date', desc: '', args: []);
  }

  /// `Departure Date:`
  String get departureDate {
    return Intl.message(
      'Departure Date:',
      name: 'departureDate',
      desc: '',
      args: [],
    );
  }

  /// `Return Date:`
  String get returnDate {
    return Intl.message('Return Date:', name: 'returnDate', desc: '', args: []);
  }

  /// `Travellers`
  String get travellers {
    return Intl.message('Travellers', name: 'travellers', desc: '', args: []);
  }

  /// `Travellers and class`
  String get travellersAndClass {
    return Intl.message(
      'Travellers and class',
      name: 'travellersAndClass',
      desc: '',
      args: [],
    );
  }

  /// `One way`
  String get oneWay {
    return Intl.message('One way', name: 'oneWay', desc: '', args: []);
  }

  /// `Round`
  String get round {
    return Intl.message('Round', name: 'round', desc: '', args: []);
  }

  /// `Multicity`
  String get multicity {
    return Intl.message('Multicity', name: 'multicity', desc: '', args: []);
  }

  /// `Accept`
  String get acc {
    return Intl.message('Accept', name: 'acc', desc: '', args: []);
  }

  /// `Economy Class`
  String get tc1 {
    return Intl.message('Economy Class', name: 'tc1', desc: '', args: []);
  }

  /// `Business Class`
  String get tc2 {
    return Intl.message('Business Class', name: 'tc2', desc: '', args: []);
  }

  /// `First Class`
  String get tc3 {
    return Intl.message('First Class', name: 'tc3', desc: '', args: []);
  }

  /// `Premium Economy`
  String get tc4 {
    return Intl.message('Premium Economy', name: 'tc4', desc: '', args: []);
  }

  /// `Edit profile`
  String get editProf {
    return Intl.message('Edit profile', name: 'editProf', desc: '', args: []);
  }

  /// `Arrival date:`
  String get arrivalDate {
    return Intl.message(
      'Arrival date:',
      name: 'arrivalDate',
      desc: '',
      args: [],
    );
  }

  /// `Guests and rooms:`
  String get guestsAndRooms {
    return Intl.message(
      'Guests and rooms:',
      name: 'guestsAndRooms',
      desc: '',
      args: [],
    );
  }

  /// `Show Details`
  String get showDetails {
    return Intl.message(
      'Show Details',
      name: 'showDetails',
      desc: '',
      args: [],
    );
  }

  /// `14 years or above`
  String get adultAge {
    return Intl.message(
      '14 years or above',
      name: 'adultAge',
      desc: '',
      args: [],
    );
  }

  /// `2-13 years`
  String get childAge {
    return Intl.message('2-13 years', name: 'childAge', desc: '', args: []);
  }

  /// `< 2 years`
  String get babyAge {
    return Intl.message('< 2 years', name: 'babyAge', desc: '', args: []);
  }

  /// `Overview`
  String get overview {
    return Intl.message('Overview', name: 'overview', desc: '', args: []);
  }

  /// `Amenities & Services`
  String get amenities {
    return Intl.message(
      'Amenities & Services',
      name: 'amenities',
      desc: '',
      args: [],
    );
  }

  /// `WiFi`
  String get wifi {
    return Intl.message('WiFi', name: 'wifi', desc: '', args: []);
  }

  /// `Restaurants`
  String get restaurants {
    return Intl.message('Restaurants', name: 'restaurants', desc: '', args: []);
  }

  /// `Parking`
  String get parking {
    return Intl.message('Parking', name: 'parking', desc: '', args: []);
  }

  /// `Gym`
  String get gym {
    return Intl.message('Gym', name: 'gym', desc: '', args: []);
  }

  /// `Breakfast`
  String get breakfast {
    return Intl.message('Breakfast', name: 'breakfast', desc: '', args: []);
  }

  /// `TV`
  String get tv {
    return Intl.message('TV', name: 'tv', desc: '', args: []);
  }

  /// `Private Bathroom`
  String get privateBathroom {
    return Intl.message(
      'Private Bathroom',
      name: 'privateBathroom',
      desc: '',
      args: [],
    );
  }

  /// `Comfort Beds`
  String get comfortBeds {
    return Intl.message(
      'Comfort Beds',
      name: 'comfortBeds',
      desc: '',
      args: [],
    );
  }

  /// `Book Now`
  String get bookNow {
    return Intl.message('Book Now', name: 'bookNow', desc: '', args: []);
  }

  /// `Air Conditioning`
  String get airCond {
    return Intl.message(
      'Air Conditioning',
      name: 'airCond',
      desc: '',
      args: [],
    );
  }

  /// `Automatic`
  String get automatic {
    return Intl.message('Automatic', name: 'automatic', desc: '', args: []);
  }

  /// `GPS`
  String get gps {
    return Intl.message('GPS', name: 'gps', desc: '', args: []);
  }

  /// `Bluetooth`
  String get bluetooth {
    return Intl.message('Bluetooth', name: 'bluetooth', desc: '', args: []);
  }

  /// `Best Flights`
  String get bestFlights {
    return Intl.message(
      'Best Flights',
      name: 'bestFlights',
      desc: '',
      args: [],
    );
  }

  /// `Arrival`
  String get arrival {
    return Intl.message('Arrival', name: 'arrival', desc: '', args: []);
  }

  /// `Entertainment`
  String get entertainment {
    return Intl.message(
      'Entertainment',
      name: 'entertainment',
      desc: '',
      args: [],
    );
  }

  /// `Power Outiet`
  String get powerOutiet {
    return Intl.message(
      'Power Outiet',
      name: 'powerOutiet',
      desc: '',
      args: [],
    );
  }

  /// `Meals`
  String get meals {
    return Intl.message('Meals', name: 'meals', desc: '', args: []);
  }

  /// `Guests`
  String get guest {
    return Intl.message('Guests', name: 'guest', desc: '', args: []);
  }

  /// `Rooms`
  String get rooms {
    return Intl.message('Rooms', name: 'rooms', desc: '', args: []);
  }

  /// `Number of Guests and Rooms`
  String get numGuestsRooms {
    return Intl.message(
      'Number of Guests and Rooms',
      name: 'numGuestsRooms',
      desc: '',
      args: [],
    );
  }

  /// `Promo code`
  String get promocode {
    return Intl.message('Promo code', name: 'promocode', desc: '', args: []);
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Light`
  String get lightTheme {
    return Intl.message('Light', name: 'lightTheme', desc: '', args: []);
  }

  /// `Dark`
  String get darkTheme {
    return Intl.message('Dark', name: 'darkTheme', desc: '', args: []);
  }

  /// `Phone number`
  String get phoneCont {
    return Intl.message('Phone number', name: 'phoneCont', desc: '', args: []);
  }

  /// `Web site`
  String get website {
    return Intl.message('Web site', name: 'website', desc: '', args: []);
  }

  /// `Facebook`
  String get facebook {
    return Intl.message('Facebook', name: 'facebook', desc: '', args: []);
  }

  /// `COPY`
  String get copy {
    return Intl.message('COPY', name: 'copy', desc: '', args: []);
  }

  /// `COPIED ✅`
  String get copied {
    return Intl.message('COPIED ✅', name: 'copied', desc: '', args: []);
  }

  /// `Egypt`
  String get egypt {
    return Intl.message('Egypt', name: 'egypt', desc: '', args: []);
  }

  /// `Algeria`
  String get country_DZ {
    return Intl.message('Algeria', name: 'country_DZ', desc: '', args: []);
  }

  /// `Bahrain`
  String get country_BH {
    return Intl.message('Bahrain', name: 'country_BH', desc: '', args: []);
  }

  /// `Comoros`
  String get country_KM {
    return Intl.message('Comoros', name: 'country_KM', desc: '', args: []);
  }

  /// `Djibouti`
  String get country_DJ {
    return Intl.message('Djibouti', name: 'country_DJ', desc: '', args: []);
  }

  /// `Egypt`
  String get country_EG {
    return Intl.message('Egypt', name: 'country_EG', desc: '', args: []);
  }

  /// `Iraq`
  String get country_IQ {
    return Intl.message('Iraq', name: 'country_IQ', desc: '', args: []);
  }

  /// `Jordan`
  String get country_JO {
    return Intl.message('Jordan', name: 'country_JO', desc: '', args: []);
  }

  /// `Kuwait`
  String get country_KW {
    return Intl.message('Kuwait', name: 'country_KW', desc: '', args: []);
  }

  /// `Lebanon`
  String get country_LB {
    return Intl.message('Lebanon', name: 'country_LB', desc: '', args: []);
  }

  /// `Libya`
  String get country_LY {
    return Intl.message('Libya', name: 'country_LY', desc: '', args: []);
  }

  /// `Mauritania`
  String get country_MR {
    return Intl.message('Mauritania', name: 'country_MR', desc: '', args: []);
  }

  /// `Morocco`
  String get country_MA {
    return Intl.message('Morocco', name: 'country_MA', desc: '', args: []);
  }

  /// `Oman`
  String get country_OM {
    return Intl.message('Oman', name: 'country_OM', desc: '', args: []);
  }

  /// `Palestine`
  String get country_PS {
    return Intl.message('Palestine', name: 'country_PS', desc: '', args: []);
  }

  /// `Qatar`
  String get country_QA {
    return Intl.message('Qatar', name: 'country_QA', desc: '', args: []);
  }

  /// `Saudi Arabia`
  String get country_SA {
    return Intl.message('Saudi Arabia', name: 'country_SA', desc: '', args: []);
  }

  /// `Somalia`
  String get country_SO {
    return Intl.message('Somalia', name: 'country_SO', desc: '', args: []);
  }

  /// `Sudan`
  String get country_SD {
    return Intl.message('Sudan', name: 'country_SD', desc: '', args: []);
  }

  /// `Syria`
  String get country_SY {
    return Intl.message('Syria', name: 'country_SY', desc: '', args: []);
  }

  /// `Tunisia`
  String get country_TN {
    return Intl.message('Tunisia', name: 'country_TN', desc: '', args: []);
  }

  /// `United Arab Emirates`
  String get country_AE {
    return Intl.message(
      'United Arab Emirates',
      name: 'country_AE',
      desc: '',
      args: [],
    );
  }

  /// `Yemen`
  String get country_YE {
    return Intl.message('Yemen', name: 'country_YE', desc: '', args: []);
  }

  /// `Choose your country`
  String get chooseCountry {
    return Intl.message(
      'Choose your country',
      name: 'chooseCountry',
      desc: '',
      args: [],
    );
  }

  /// `Choose how you want to reset your password.`
  String get forgPassDesc {
    return Intl.message(
      'Choose how you want to reset your password.',
      name: 'forgPassDesc',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Code`
  String get sendResetCode {
    return Intl.message(
      'Send Reset Code',
      name: 'sendResetCode',
      desc: '',
      args: [],
    );
  }

  /// `Reset your password`
  String get resetYoutPass {
    return Intl.message(
      'Reset your password',
      name: 'resetYoutPass',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message('Phone', name: 'phone', desc: '', args: []);
  }

  /// `Enter your phone number`
  String get enterYourPhoneNum {
    return Intl.message(
      'Enter your phone number',
      name: 'enterYourPhoneNum',
      desc: '',
      args: [],
    );
  }

  /// `US Dollar`
  String get currency_usd {
    return Intl.message('US Dollar', name: 'currency_usd', desc: '', args: []);
  }

  /// `Euro`
  String get currency_eur {
    return Intl.message('Euro', name: 'currency_eur', desc: '', args: []);
  }

  /// `Egyptian Pound`
  String get currency_egp {
    return Intl.message(
      'Egyptian Pound',
      name: 'currency_egp',
      desc: '',
      args: [],
    );
  }

  /// `Saudi Riyal`
  String get currency_sar {
    return Intl.message(
      'Saudi Riyal',
      name: 'currency_sar',
      desc: '',
      args: [],
    );
  }

  /// `Emirati Dirham`
  String get currency_aed {
    return Intl.message(
      'Emirati Dirham',
      name: 'currency_aed',
      desc: '',
      args: [],
    );
  }

  /// `Choose Currency`
  String get chooseCurrency {
    return Intl.message(
      'Choose Currency',
      name: 'chooseCurrency',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message('FAQ', name: 'faq', desc: '', args: []);
  }

  /// `How can we help you?`
  String get howCanHelp {
    return Intl.message(
      'How can we help you?',
      name: 'howCanHelp',
      desc: '',
      args: [],
    );
  }

  /// `Top Questions`
  String get topQ {
    return Intl.message('Top Questions', name: 'topQ', desc: '', args: []);
  }

  /// `View all`
  String get viewAll {
    return Intl.message('View all', name: 'viewAll', desc: '', args: []);
  }

  /// `Questions about`
  String get qAbout {
    return Intl.message('Questions about', name: 'qAbout', desc: '', args: []);
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
