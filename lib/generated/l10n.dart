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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home Page`
  String get homepage {
    return Intl.message(
      'Home Page',
      name: 'homepage',
      desc: '',
      args: [],
    );
  }

  /// `Get started!`
  String get getStarted {
    return Intl.message(
      'Get started!',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Log in to `
  String get logintoAqua {
    return Intl.message(
      'Log in to ',
      name: 'logintoAqua',
      desc: '',
      args: [],
    );
  }

  /// `Aqua`
  String get aqua {
    return Intl.message(
      'Aqua',
      name: 'aqua',
      desc: '',
      args: [],
    );
  }

  /// `Your email`
  String get yourEmail {
    return Intl.message(
      'Your email',
      name: 'yourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Your password`
  String get yourPassword {
    return Intl.message(
      'Your password',
      name: 'yourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect mail format`
  String get errorMailFormat {
    return Intl.message(
      'Incorrect mail format',
      name: 'errorMailFormat',
      desc: '',
      args: [],
    );
  }

  /// `Your password must be at least 8 characters, 1 uppercase, 1 lowercase, 1 digit, 1 special char.`
  String get errorPasswordLength {
    return Intl.message(
      'Your password must be at least 8 characters, 1 uppercase, 1 lowercase, 1 digit, 1 special char.',
      name: 'errorPasswordLength',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get resetPassword {
    return Intl.message(
      'Reset Password',
      name: 'resetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Check email address`
  String get checkEmailAddress {
    return Intl.message(
      'Check email address',
      name: 'checkEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Check your email!`
  String get checkyouremail {
    return Intl.message(
      'Check your email!',
      name: 'checkyouremail',
      desc: '',
      args: [],
    );
  }

  /// `Done!`
  String get done {
    return Intl.message(
      'Done!',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.`
  String get ipsum {
    return Intl.message(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      name: 'ipsum',
      desc: '',
      args: [],
    );
  }

  /// `Residental Address`
  String get residentalAddress {
    return Intl.message(
      'Residental Address',
      name: 'residentalAddress',
      desc: '',
      args: [],
    );
  }

  /// `Aqua is required by law to collect this information.`
  String get residentalAddressDesc {
    return Intl.message(
      'Aqua is required by law to collect this information.',
      name: 'residentalAddressDesc',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address`
  String get enterYourAddress {
    return Intl.message(
      'Enter your address',
      name: 'enterYourAddress',
      desc: '',
      args: [],
    );
  }

  /// `ZIP Code`
  String get zipCode {
    return Intl.message(
      'ZIP Code',
      name: 'zipCode',
      desc: '',
      args: [],
    );
  }

  /// `We will never share this information with marketers and we will never send your spam`
  String get addressAgreement {
    return Intl.message(
      'We will never share this information with marketers and we will never send your spam',
      name: 'addressAgreement',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address`
  String get yourAddress {
    return Intl.message(
      'Enter your address',
      name: 'yourAddress',
      desc: '',
      args: [],
    );
  }

  /// `ZIP-code`
  String get yourZip {
    return Intl.message(
      'ZIP-code',
      name: 'yourZip',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Your country`
  String get yourCountry {
    return Intl.message(
      'Your country',
      name: 'yourCountry',
      desc: '',
      args: [],
    );
  }

  /// `Choose your country`
  String get yourCountryDesc {
    return Intl.message(
      'Choose your country',
      name: 'yourCountryDesc',
      desc: '',
      args: [],
    );
  }

  /// `Your town`
  String get yourTown {
    return Intl.message(
      'Your town',
      name: 'yourTown',
      desc: '',
      args: [],
    );
  }

  /// `Choose your town`
  String get yourTownDesc {
    return Intl.message(
      'Choose your town',
      name: 'yourTownDesc',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get dateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Aqua is required by law to collect this information.`
  String get dateOfBirthDesc {
    return Intl.message(
      'Aqua is required by law to collect this information.',
      name: 'dateOfBirthDesc',
      desc: '',
      args: [],
    );
  }

  /// `MM`
  String get mm {
    return Intl.message(
      'MM',
      name: 'mm',
      desc: '',
      args: [],
    );
  }

  /// `DD`
  String get dd {
    return Intl.message(
      'DD',
      name: 'dd',
      desc: '',
      args: [],
    );
  }

  /// `YYYY`
  String get yyyy {
    return Intl.message(
      'YYYY',
      name: 'yyyy',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get year {
    return Intl.message(
      'Year',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `MM / DD / YYYY*`
  String get mmddyyyy {
    return Intl.message(
      'MM / DD / YYYY*',
      name: 'mmddyyyy',
      desc: '',
      args: [],
    );
  }

  /// `Participants must be older than 18 years.`
  String get mustBeOlder {
    return Intl.message(
      'Participants must be older than 18 years.',
      name: 'mustBeOlder',
      desc: '',
      args: [],
    );
  }

  /// `You should be older than 18 years.`
  String get youMustBeOlder {
    return Intl.message(
      'You should be older than 18 years.',
      name: 'youMustBeOlder',
      desc: '',
      args: [],
    );
  }

  /// `What is your email address?`
  String get whatYourEmail {
    return Intl.message(
      'What is your email address?',
      name: 'whatYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Your email*`
  String get yourEmailStar {
    return Intl.message(
      'Your email*',
      name: 'yourEmailStar',
      desc: '',
      args: [],
    );
  }

  /// `Your legal name`
  String get yourName {
    return Intl.message(
      'Your legal name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get yourFirstName {
    return Intl.message(
      'First name',
      name: 'yourFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get yourLastName {
    return Intl.message(
      'Last name',
      name: 'yourLastName',
      desc: '',
      args: [],
    );
  }

  /// `Enter name`
  String get enterName {
    return Intl.message(
      'Enter name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get newsTitle {
    return Intl.message(
      'News',
      name: 'newsTitle',
      desc: '',
      args: [],
    );
  }

  /// `I would like to receive updates about the latest promotions, news and special offers from Aqua via:`
  String get newsSubtitle {
    return Intl.message(
      'I would like to receive updates about the latest promotions, news and special offers from Aqua via:',
      name: 'newsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get post {
    return Intl.message(
      'Post',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `SMS`
  String get sms {
    return Intl.message(
      'SMS',
      name: 'sms',
      desc: '',
      args: [],
    );
  }

  /// `Create password`
  String get createPassword {
    return Intl.message(
      'Create password',
      name: 'createPassword',
      desc: '',
      args: [],
    );
  }

  /// `Your password*`
  String get yourPasswordStar {
    return Intl.message(
      'Your password*',
      name: 'yourPasswordStar',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password*`
  String get confirmPasswordStar {
    return Intl.message(
      'Confirm password*',
      name: 'confirmPasswordStar',
      desc: '',
      args: [],
    );
  }

  /// `Entered passwords don't match`
  String get errorPasswordMatch {
    return Intl.message(
      'Entered passwords don\'t match',
      name: 'errorPasswordMatch',
      desc: '',
      args: [],
    );
  }

  /// `We recommend that your password be at least 6 characters long and that you use a combination of letters, numbers and symbols.`
  String get passwordRecommendations {
    return Intl.message(
      'We recommend that your password be at least 6 characters long and that you use a combination of letters, numbers and symbols.',
      name: 'passwordRecommendations',
      desc: '',
      args: [],
    );
  }

  /// `Your mobile number`
  String get yourMobileNumber {
    return Intl.message(
      'Your mobile number',
      name: 'yourMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Phone number*`
  String get phoneNumber {
    return Intl.message(
      'Phone number*',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been successfully created!`
  String get signUpConfirmationTitle {
    return Intl.message(
      'Your account has been successfully created!',
      name: 'signUpConfirmationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Please check your inbox, a code is sent on your email as well as on your registered phone no. which will be required when you will reach to the venue and to login your account.`
  String get signUpConfirmationContent {
    return Intl.message(
      'Please check your inbox, a code is sent on your email as well as on your registered phone no. which will be required when you will reach to the venue and to login your account.',
      name: 'signUpConfirmationContent',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get signIn {
    return Intl.message(
      'Log in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verifyTitle {
    return Intl.message(
      'Verify',
      name: 'verifyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing`
  String get verifySubtitle {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing',
      name: 'verifySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `In order to complete registration, please confirm that you are at least 18 years of age and that you accept the Terms and Conditions, the Privacy Policy, the Cookie Policy and Age VerificationPolicy as published on this website.`
  String get verifyContent {
    return Intl.message(
      'In order to complete registration, please confirm that you are at least 18 years of age and that you accept the Terms and Conditions, the Privacy Policy, the Cookie Policy and Age VerificationPolicy as published on this website.',
      name: 'verifyContent',
      desc: '',
      args: [],
    );
  }

  /// `I agree`
  String get iAgree {
    return Intl.message(
      'I agree',
      name: 'iAgree',
      desc: '',
      args: [],
    );
  }

  /// `Let's get started!`
  String get letsGetStarted {
    return Intl.message(
      'Let\'s get started!',
      name: 'letsGetStarted',
      desc: '',
      args: [],
    );
  }

  /// `All times shown are your \nlocal time`
  String get localTime {
    return Intl.message(
      'All times shown are your \nlocal time',
      name: 'localTime',
      desc: '',
      args: [],
    );
  }

  /// `Add fixtures to calender`
  String get addFixture {
    return Intl.message(
      'Add fixtures to calender',
      name: 'addFixture',
      desc: '',
      args: [],
    );
  }

  /// `Tournament & League`
  String get Tournament {
    return Intl.message(
      'Tournament & League',
      name: 'Tournament',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get Date {
    return Intl.message(
      'Date',
      name: 'Date',
      desc: '',
      args: [],
    );
  }

  /// `Max team & investment`
  String get MaxInvestment {
    return Intl.message(
      'Max team & investment',
      name: 'MaxInvestment',
      desc: '',
      args: [],
    );
  }

  /// `Starts in`
  String get StartsIn {
    return Intl.message(
      'Starts in',
      name: 'StartsIn',
      desc: '',
      args: [],
    );
  }

  /// `Prize pool Entry fee`
  String get PrizeFee {
    return Intl.message(
      'Prize pool Entry fee',
      name: 'PrizeFee',
      desc: '',
      args: [],
    );
  }

  /// `CREATE A TEAM`
  String get CreateTeam {
    return Intl.message(
      'CREATE A TEAM',
      name: 'CreateTeam',
      desc: '',
      args: [],
    );
  }

  /// `Search for players..`
  String get searchPlayers {
    return Intl.message(
      'Search for players..',
      name: 'searchPlayers',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get doneBtn {
    return Intl.message(
      'Done',
      name: 'doneBtn',
      desc: '',
      args: [],
    );
  }

  /// `Create a Team`
  String get createTeam {
    return Intl.message(
      'Create a Team',
      name: 'createTeam',
      desc: '',
      args: [],
    );
  }

  /// `Players`
  String get Players {
    return Intl.message(
      'Players',
      name: 'Players',
      desc: '',
      args: [],
    );
  }

  /// `Team`
  String get Team {
    return Intl.message(
      'Team',
      name: 'Team',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get Position {
    return Intl.message(
      'Position',
      name: 'Position',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get Price {
    return Intl.message(
      'Price',
      name: 'Price',
      desc: '',
      args: [],
    );
  }

  /// `Player investment`
  String get Investment {
    return Intl.message(
      'Player investment',
      name: 'Investment',
      desc: '',
      args: [],
    );
  }

  /// `Weighting`
  String get Weighting {
    return Intl.message(
      'Weighting',
      name: 'Weighting',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get Type {
    return Intl.message(
      'Type',
      name: 'Type',
      desc: '',
      args: [],
    );
  }

  /// `£ Change`
  String get Change {
    return Intl.message(
      '£ Change',
      name: 'Change',
      desc: '',
      args: [],
    );
  }

  /// `Inplay`
  String get Inplay {
    return Intl.message(
      'Inplay',
      name: 'Inplay',
      desc: '',
      args: [],
    );
  }

  /// `Create A Tournament`
  String get createTournament {
    return Intl.message(
      'Create A Tournament',
      name: 'createTournament',
      desc: '',
      args: [],
    );
  }

  /// `Public`
  String get public {
    return Intl.message(
      'Public',
      name: 'public',
      desc: '',
      args: [],
    );
  }

  /// `Private`
  String get private {
    return Intl.message(
      'Private',
      name: 'private',
      desc: '',
      args: [],
    );
  }

  /// `Select Duration`
  String get selectDuration {
    return Intl.message(
      'Select Duration',
      name: 'selectDuration',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Select Included Leagues`
  String get selectIncludedLeagues {
    return Intl.message(
      'Select Included Leagues',
      name: 'selectIncludedLeagues',
      desc: '',
      args: [],
    );
  }

  /// `Single League`
  String get singleLeague {
    return Intl.message(
      'Single League',
      name: 'singleLeague',
      desc: '',
      args: [],
    );
  }

  /// `Multi League`
  String get multiLeague {
    return Intl.message(
      'Multi League',
      name: 'multiLeague',
      desc: '',
      args: [],
    );
  }

  /// `Select Minimum Contribution`
  String get selectMinimumContribution {
    return Intl.message(
      'Select Minimum Contribution',
      name: 'selectMinimumContribution',
      desc: '',
      args: [],
    );
  }

  /// `Max. Participants`
  String get maxParticipants {
    return Intl.message(
      'Max. Participants',
      name: 'maxParticipants',
      desc: '',
      args: [],
    );
  }

  /// `My Tournaments`
  String get myTournaments {
    return Intl.message(
      'My Tournaments',
      name: 'myTournaments',
      desc: '',
      args: [],
    );
  }

  /// `Choose Player`
  String get choosePlayer {
    return Intl.message(
      'Choose Player',
      name: 'choosePlayer',
      desc: '',
      args: [],
    );
  }

  /// `Recent Players`
  String get recentPlayers {
    return Intl.message(
      'Recent Players',
      name: 'recentPlayers',
      desc: '',
      args: [],
    );
  }

  /// `My Team`
  String get myTeam {
    return Intl.message(
      'My Team',
      name: 'myTeam',
      desc: '',
      args: [],
    );
  }

  /// `Please type 6 digit OTP`
  String get errorOTP {
    return Intl.message(
      'Please type 6 digit OTP',
      name: 'errorOTP',
      desc: '',
      args: [],
    );
  }

  /// `We have sent you an email`
  String get sentYouEmailOTP {
    return Intl.message(
      'We have sent you an email',
      name: 'sentYouEmailOTP',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the security code we have sent to `
  String get sendYouSMSDesc {
    return Intl.message(
      'Please enter the security code we have sent to ',
      name: 'sendYouSMSDesc',
      desc: '',
      args: [],
    );
  }

  /// `Type your 6-digit security code here:`
  String get typeYourCodeHere {
    return Intl.message(
      'Type your 6-digit security code here:',
      name: 'typeYourCodeHere',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'ES'),
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
