import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'translations_ar.dart';
import 'translations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of Translations
/// returned by `Translations.of(context)`.
///
/// Applications need to include `Translations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'translation/translations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Translations.localizationsDelegates,
///   supportedLocales: Translations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Translations.supportedLocales
/// property.
abstract class Translations {
  Translations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Translations? of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }

  static const LocalizationsDelegate<Translations> delegate =
      _TranslationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @splash.
  ///
  /// In en, this message translates to:
  /// **'splash'**
  String get splash;

  /// No description provided for @jj.
  ///
  /// In en, this message translates to:
  /// **'ennnnnnnnn'**
  String get jj;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// No description provided for @bestSeller.
  ///
  /// In en, this message translates to:
  /// **'best Seller'**
  String get bestSeller;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'categories'**
  String get categories;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'change Language'**
  String get changeLanguage;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Order Your Medicine and Deliver it'**
  String get onboardingTitle1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Home Nursing'**
  String get onboardingTitle2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Online Consultation'**
  String get onboardingTitle3;

  /// No description provided for @onboardingTitle4.
  ///
  /// In en, this message translates to:
  /// **'Book Appointment To your Relevant'**
  String get onboardingTitle4;

  /// No description provided for @onboardingTitle5.
  ///
  /// In en, this message translates to:
  /// **'Qualified Doctors Near By You'**
  String get onboardingTitle5;

  /// No description provided for @onboardingDescription1.
  ///
  /// In en, this message translates to:
  /// **'Send your prescription to the nearest Pharmacy and deliver it to you home.'**
  String get onboardingDescription1;

  /// No description provided for @onboardingDescription2.
  ///
  /// In en, this message translates to:
  /// **'You can request a private nurse at home to perform medical purposes with ease.'**
  String get onboardingDescription2;

  /// No description provided for @onboardingDescription3.
  ///
  /// In en, this message translates to:
  /// **'You can Talk to The doctor to get more info about your prescription or any question.'**
  String get onboardingDescription3;

  /// No description provided for @onboardingDescription4.
  ///
  /// In en, this message translates to:
  /// **'You Can Add Your Relevant and Book an appointment through the application.'**
  String get onboardingDescription4;

  /// No description provided for @onboardingDescription5.
  ///
  /// In en, this message translates to:
  /// **'You Can Search your Nearest Doctor and see reviews before booking.'**
  String get onboardingDescription5;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @clinics.
  ///
  /// In en, this message translates to:
  /// **'Clinics'**
  String get clinics;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get clearAll;

  /// No description provided for @km.
  ///
  /// In en, this message translates to:
  /// **'KM'**
  String get km;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Sٍtart'**
  String get start;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'SignIn'**
  String get signIn;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back. Please enter your information to Sign in'**
  String get welcomeBack;

  /// No description provided for @welcomeBack2.
  ///
  /// In en, this message translates to:
  /// **'Welcome back '**
  String get welcomeBack2;

  /// No description provided for @phoneOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Phone number or email'**
  String get phoneOrEmail;

  /// No description provided for @enterPhoneOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Phone number or email'**
  String get enterPhoneOrEmail;

  /// No description provided for @enterAValidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number'**
  String get enterAValidPhoneNumber;

  /// No description provided for @enterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get enterAValidEmail;

  /// No description provided for @enterAValidPhoneOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid phone number or email'**
  String get enterAValidPhoneOrEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @nextArrowDirection.
  ///
  /// In en, this message translates to:
  /// **'>'**
  String get nextArrowDirection;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @prescription.
  ///
  /// In en, this message translates to:
  /// **'Prescription'**
  String get prescription;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @bookingType.
  ///
  /// In en, this message translates to:
  /// **'Booking type'**
  String get bookingType;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get enterPassword;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me for 30 days'**
  String get rememberMe;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'forget Password?'**
  String get forgetPassword;

  /// No description provided for @forgetPassword2.
  ///
  /// In en, this message translates to:
  /// **'forget Password?'**
  String get forgetPassword2;

  /// No description provided for @dontWorry.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry, we will send you account recovery instructions'**
  String get dontWorry;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'reset Password'**
  String get resetPassword;

  /// No description provided for @returnToSignIn.
  ///
  /// In en, this message translates to:
  /// **'return To SignIn'**
  String get returnToSignIn;

  /// No description provided for @resetYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Your Password'**
  String get resetYourPassword;

  /// No description provided for @confirmVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Confirm Verification Code'**
  String get confirmVerificationCode;

  /// No description provided for @codeSent.
  ///
  /// In en, this message translates to:
  /// **'We sent you a activation code to your phone consisting of 6 digits'**
  String get codeSent;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @newPasswordMustDiffer.
  ///
  /// In en, this message translates to:
  /// **'Your new password must be different from the previous one'**
  String get newPasswordMustDiffer;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @passwordCondition1.
  ///
  /// In en, this message translates to:
  /// **'Must be 8 characters long and include some numbers'**
  String get passwordCondition1;

  /// No description provided for @passwordCondition2.
  ///
  /// In en, this message translates to:
  /// **'Must contain at least one special character'**
  String get passwordCondition2;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @offers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offers;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'profile'**
  String get profile;

  /// No description provided for @shopNow.
  ///
  /// In en, this message translates to:
  /// **'Shop Now'**
  String get shopNow;

  /// No description provided for @filtering.
  ///
  /// In en, this message translates to:
  /// **'Filtering'**
  String get filtering;

  /// No description provided for @specialOffers.
  ///
  /// In en, this message translates to:
  /// **'SpecialOffers'**
  String get specialOffers;

  /// No description provided for @offersOn.
  ///
  /// In en, this message translates to:
  /// **'Offers On'**
  String get offersOn;

  /// No description provided for @makeup.
  ///
  /// In en, this message translates to:
  /// **'makeup'**
  String get makeup;

  /// No description provided for @shoppingBasket.
  ///
  /// In en, this message translates to:
  /// **'shoppingBasket'**
  String get shoppingBasket;

  /// No description provided for @offersBasket.
  ///
  /// In en, this message translates to:
  /// **'Offers Basket'**
  String get offersBasket;

  /// No description provided for @youHaveAnInsurancePolicyFromCompany.
  ///
  /// In en, this message translates to:
  /// **'You have an insurance policy from a company'**
  String get youHaveAnInsurancePolicyFromCompany;

  /// No description provided for @yourInsurancePolicyWillBeSentToThePharmacy.
  ///
  /// In en, this message translates to:
  /// **'Your insurance policy will be sent to the pharmacy'**
  String get yourInsurancePolicyWillBeSentToThePharmacy;

  /// No description provided for @inTheShoppingCart.
  ///
  /// In en, this message translates to:
  /// **'In the shopping cart'**
  String get inTheShoppingCart;

  /// No description provided for @getTheBestOffers.
  ///
  /// In en, this message translates to:
  /// **'Get the best offers'**
  String get getTheBestOffers;

  /// No description provided for @continueBrowsing.
  ///
  /// In en, this message translates to:
  /// **'Continue browsing'**
  String get continueBrowsing;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @totalCart.
  ///
  /// In en, this message translates to:
  /// **'Total Cart'**
  String get totalCart;

  /// No description provided for @weHaveReceivedYourOrderAndNowWeWillSearchForTheBestOffersFromThePharmaciesAroundYou.
  ///
  /// In en, this message translates to:
  /// **'We have received your order and now we will search for the best offers from the pharmacies around you'**
  String
  get weHaveReceivedYourOrderAndNowWeWillSearchForTheBestOffersFromThePharmaciesAroundYou;

  /// No description provided for @cancellingOrder.
  ///
  /// In en, this message translates to:
  /// **'Cancelling order'**
  String get cancellingOrder;

  /// No description provided for @freeShipping.
  ///
  /// In en, this message translates to:
  /// **'FreeShipping'**
  String get freeShipping;

  /// No description provided for @exist.
  ///
  /// In en, this message translates to:
  /// **'exist'**
  String get exist;

  /// No description provided for @unExist.
  ///
  /// In en, this message translates to:
  /// **'un Exist'**
  String get unExist;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @accept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get accept;

  /// No description provided for @reject.
  ///
  /// In en, this message translates to:
  /// **'reject'**
  String get reject;

  /// No description provided for @completePurchase.
  ///
  /// In en, this message translates to:
  /// **'Complete Purchase'**
  String get completePurchase;

  /// No description provided for @addAddress.
  ///
  /// In en, this message translates to:
  /// **'Add Address'**
  String get addAddress;

  /// No description provided for @lblLocationPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Location Permission Denied'**
  String get lblLocationPermissionDenied;

  /// No description provided for @lblLocationPermissionDeniedPermanently.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied, we cannot request permissions.'**
  String get lblLocationPermissionDeniedPermanently;

  /// No description provided for @lblEnableLocation.
  ///
  /// In en, this message translates to:
  /// **'Enable Location'**
  String get lblEnableLocation;

  /// No description provided for @lblEnableLocationMessage.
  ///
  /// In en, this message translates to:
  /// **'Enable Location Message'**
  String get lblEnableLocationMessage;

  /// No description provided for @setAddress.
  ///
  /// In en, this message translates to:
  /// **'set Address'**
  String get setAddress;

  /// No description provided for @shippingAddress.
  ///
  /// In en, this message translates to:
  /// **'shipping address'**
  String get shippingAddress;

  /// No description provided for @deliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'delivery address'**
  String get deliveryAddress;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @cashOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on Delivery'**
  String get cashOnDelivery;

  /// No description provided for @onlinePayment.
  ///
  /// In en, this message translates to:
  /// **'Online Cards'**
  String get onlinePayment;

  /// No description provided for @discountCoupon.
  ///
  /// In en, this message translates to:
  /// **'discount coupon'**
  String get discountCoupon;

  /// No description provided for @enterDiscountCoupon.
  ///
  /// In en, this message translates to:
  /// **'Enter the discount coupon'**
  String get enterDiscountCoupon;

  /// No description provided for @orderSummary.
  ///
  /// In en, this message translates to:
  /// **'Order Summary'**
  String get orderSummary;

  /// No description provided for @discountAmount.
  ///
  /// In en, this message translates to:
  /// **'Discount Amount'**
  String get discountAmount;

  /// No description provided for @shippingFee.
  ///
  /// In en, this message translates to:
  /// **'shipping fee'**
  String get shippingFee;

  /// No description provided for @vat.
  ///
  /// In en, this message translates to:
  /// **'12% value added tax'**
  String get vat;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'total total'**
  String get totalAmount;

  /// No description provided for @confirmOrder.
  ///
  /// In en, this message translates to:
  /// **'Confirm order'**
  String get confirmOrder;

  /// No description provided for @selectLocation.
  ///
  /// In en, this message translates to:
  /// **'select location'**
  String get selectLocation;

  /// No description provided for @myCards.
  ///
  /// In en, this message translates to:
  /// **'My Cards'**
  String get myCards;

  /// No description provided for @addPaymentCard.
  ///
  /// In en, this message translates to:
  /// **'Add payment card'**
  String get addPaymentCard;

  /// No description provided for @cardholderName.
  ///
  /// In en, this message translates to:
  /// **'Cardholder Name'**
  String get cardholderName;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @expirationDate.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date'**
  String get expirationDate;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @orderConfirmation.
  ///
  /// In en, this message translates to:
  /// **'The order has been confirmed!'**
  String get orderConfirmation;

  /// No description provided for @orderConfirmedMessage.
  ///
  /// In en, this message translates to:
  /// **'Your order has been confirmed and will arrive within 30 minutes'**
  String get orderConfirmedMessage;

  /// No description provided for @trackOrder.
  ///
  /// In en, this message translates to:
  /// **'Track Order'**
  String get trackOrder;

  /// No description provided for @continues.
  ///
  /// In en, this message translates to:
  /// **'continue'**
  String get continues;

  /// No description provided for @orderTrackingDetails.
  ///
  /// In en, this message translates to:
  /// **'Tracking Details'**
  String get orderTrackingDetails;

  /// No description provided for @orderNumber.
  ///
  /// In en, this message translates to:
  /// **'order number'**
  String get orderNumber;

  /// No description provided for @orderStatus.
  ///
  /// In en, this message translates to:
  /// **'order status'**
  String get orderStatus;

  /// No description provided for @orderReceived.
  ///
  /// In en, this message translates to:
  /// **'Your order has been received'**
  String get orderReceived;

  /// No description provided for @pharmacyConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Sally\'s Pharmacy has received your order'**
  String get pharmacyConfirmation;

  /// No description provided for @paymentConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Payment has been confirmed'**
  String get paymentConfirmation;

  /// No description provided for @deliveryRepresentativeContact.
  ///
  /// In en, this message translates to:
  /// **'You will be contacted by the delivery representative'**
  String get deliveryRepresentativeContact;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @visaCard.
  ///
  /// In en, this message translates to:
  /// **'Visa Card'**
  String get visaCard;

  /// No description provided for @masterCard.
  ///
  /// In en, this message translates to:
  /// **'Master Card'**
  String get masterCard;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date : '**
  String get expiryDate;

  /// No description provided for @addCard.
  ///
  /// In en, this message translates to:
  /// **'Add Card'**
  String get addCard;

  /// No description provided for @cardHolder.
  ///
  /// In en, this message translates to:
  /// **'card Holder'**
  String get cardHolder;

  /// No description provided for @pleasEnterValidCvv.
  ///
  /// In en, this message translates to:
  /// **'Please input a valid CVV'**
  String get pleasEnterValidCvv;

  /// No description provided for @pleasEnterValidCardNumber.
  ///
  /// In en, this message translates to:
  /// **'Please input a valid card number'**
  String get pleasEnterValidCardNumber;

  /// No description provided for @pleasEnterValidExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'Please input a valid expiry date'**
  String get pleasEnterValidExpiryDate;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @pharmacyReceivedOrder.
  ///
  /// In en, this message translates to:
  /// **'Sally Pharmacy has received your order'**
  String get pharmacyReceivedOrder;

  /// No description provided for @paymentConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Payment has been confirmed'**
  String get paymentConfirmed;

  /// No description provided for @paymentConfirmationOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Payment on delivery has been confirmed'**
  String get paymentConfirmationOnDelivery;

  /// No description provided for @preparingOrder.
  ///
  /// In en, this message translates to:
  /// **'Your order is being prepared'**
  String get preparingOrder;

  /// No description provided for @sallyPreparingOrder.
  ///
  /// In en, this message translates to:
  /// **'Pharmacy is preparing your order'**
  String get sallyPreparingOrder;

  /// No description provided for @orderOnTheWay.
  ///
  /// In en, this message translates to:
  /// **'Your order is on the way'**
  String get orderOnTheWay;

  /// No description provided for @deliveryAgentContact.
  ///
  /// In en, this message translates to:
  /// **'You will be contacted by the delivery agent'**
  String get deliveryAgentContact;

  /// No description provided for @personalAccount.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get personalAccount;

  /// No description provided for @accountInformation.
  ///
  /// In en, this message translates to:
  /// **'Account Information'**
  String get accountInformation;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @insurance.
  ///
  /// In en, this message translates to:
  /// **'Insurance'**
  String get insurance;

  /// No description provided for @prescriptions.
  ///
  /// In en, this message translates to:
  /// **'Prescriptions'**
  String get prescriptions;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @loginConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log in?'**
  String get loginConfirmation;

  /// No description provided for @saveLoginInfo.
  ///
  /// In en, this message translates to:
  /// **'Save login information'**
  String get saveLoginInfo;

  /// No description provided for @pharmacies.
  ///
  /// In en, this message translates to:
  /// **'Pharmacies'**
  String get pharmacies;

  /// No description provided for @medications.
  ///
  /// In en, this message translates to:
  /// **'Medications'**
  String get medications;

  /// No description provided for @insuranceInfo.
  ///
  /// In en, this message translates to:
  /// **'Insurance Information'**
  String get insuranceInfo;

  /// No description provided for @enterInfo.
  ///
  /// In en, this message translates to:
  /// **'Enter your information'**
  String get enterInfo;

  /// No description provided for @insuranceCompany.
  ///
  /// In en, this message translates to:
  /// **'Insurance Company'**
  String get insuranceCompany;

  /// No description provided for @chooseCompany.
  ///
  /// In en, this message translates to:
  /// **'Choose company name'**
  String get chooseCompany;

  /// No description provided for @uploadInsurance.
  ///
  /// In en, this message translates to:
  /// **'Upload insurance image'**
  String get uploadInsurance;

  /// No description provided for @clickHereToUpload.
  ///
  /// In en, this message translates to:
  /// **'Click here to upload'**
  String get clickHereToUpload;

  /// No description provided for @reorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder'**
  String get reorder;

  /// No description provided for @rateOrder.
  ///
  /// In en, this message translates to:
  /// **'Rate order'**
  String get rateOrder;

  /// No description provided for @uploadPrescription.
  ///
  /// In en, this message translates to:
  /// **'Upload prescription'**
  String get uploadPrescription;

  /// No description provided for @uploadPrescriptionInfo.
  ///
  /// In en, this message translates to:
  /// **'Uploading prescription helps doctors read it easily'**
  String get uploadPrescriptionInfo;

  /// No description provided for @previousPrescriptions.
  ///
  /// In en, this message translates to:
  /// **'Previous prescriptions'**
  String get previousPrescriptions;

  /// No description provided for @alert.
  ///
  /// In en, this message translates to:
  /// **'Alert'**
  String get alert;

  /// No description provided for @uploadClearImage.
  ///
  /// In en, this message translates to:
  /// **'Upload a clear image of the prescription for easy reading by the doctor'**
  String get uploadClearImage;

  /// No description provided for @previousOrders.
  ///
  /// In en, this message translates to:
  /// **'Previous orders'**
  String get previousOrders;

  /// No description provided for @currentOrders.
  ///
  /// In en, this message translates to:
  /// **'Current orders'**
  String get currentOrders;

  /// No description provided for @prescriptionReceived.
  ///
  /// In en, this message translates to:
  /// **'Prescription received'**
  String get prescriptionReceived;

  /// No description provided for @deliveryInProgress.
  ///
  /// In en, this message translates to:
  /// **'Delivery in progress'**
  String get deliveryInProgress;

  /// No description provided for @prescriptionContent.
  ///
  /// In en, this message translates to:
  /// **'Prescription content'**
  String get prescriptionContent;

  /// No description provided for @number.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get number;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @allRightsReserved.
  ///
  /// In en, this message translates to:
  /// **'All rights reserved ©2024 Agzakhanty'**
  String get allRightsReserved;

  /// No description provided for @confirmDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Confirm account deletion? It cannot be undone'**
  String get confirmDeleteAccount;

  /// No description provided for @addNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Add new address'**
  String get addNewAddress;

  /// No description provided for @main.
  ///
  /// In en, this message translates to:
  /// **'Main'**
  String get main;

  /// No description provided for @homeVisitRequest.
  ///
  /// In en, this message translates to:
  /// **'Home visit request'**
  String get homeVisitRequest;

  /// No description provided for @no_requests_found.
  ///
  /// In en, this message translates to:
  /// **'No requests found'**
  String get no_requests_found;

  /// No description provided for @requestANewHomeVisit.
  ///
  /// In en, this message translates to:
  /// **'Request a new home visit'**
  String get requestANewHomeVisit;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @chooseAge.
  ///
  /// In en, this message translates to:
  /// **'Choose age'**
  String get chooseAge;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @selectADate.
  ///
  /// In en, this message translates to:
  /// **'Select a date'**
  String get selectADate;

  /// No description provided for @reason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get reason;

  /// No description provided for @pleaseClarifyTheReasonForTheVisit.
  ///
  /// In en, this message translates to:
  /// **'Please clarify the reason for the visit'**
  String get pleaseClarifyTheReasonForTheVisit;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @homeVisitCost.
  ///
  /// In en, this message translates to:
  /// **'Home visit cost'**
  String get homeVisitCost;

  /// No description provided for @egp.
  ///
  /// In en, this message translates to:
  /// **'EGP'**
  String get egp;

  /// No description provided for @payToFinishRequest.
  ///
  /// In en, this message translates to:
  /// **'Pay to finish request'**
  String get payToFinishRequest;

  /// No description provided for @orderId.
  ///
  /// In en, this message translates to:
  /// **'Order Id'**
  String get orderId;

  /// No description provided for @startVisitRequest.
  ///
  /// In en, this message translates to:
  /// **'Start visit request'**
  String get startVisitRequest;

  /// No description provided for @consultPharmacist.
  ///
  /// In en, this message translates to:
  /// **'Consult pharmacist'**
  String get consultPharmacist;

  /// No description provided for @speciality.
  ///
  /// In en, this message translates to:
  /// **'Speciality'**
  String get speciality;

  /// No description provided for @selectSpeciality.
  ///
  /// In en, this message translates to:
  /// **'Select speciality'**
  String get selectSpeciality;

  /// No description provided for @pleaseClarifyTheReasonForConsultation.
  ///
  /// In en, this message translates to:
  /// **'Please clarify the reason for consultation'**
  String get pleaseClarifyTheReasonForConsultation;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @consultationFees.
  ///
  /// In en, this message translates to:
  /// **'Consultation fees'**
  String get consultationFees;

  /// No description provided for @payToStartSession.
  ///
  /// In en, this message translates to:
  /// **'Pay to start session'**
  String get payToStartSession;

  /// No description provided for @dr.
  ///
  /// In en, this message translates to:
  /// **'Dr.'**
  String get dr;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get country;

  /// No description provided for @chooseCountry.
  ///
  /// In en, this message translates to:
  /// **'Choose country'**
  String get chooseCountry;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number *'**
  String get phoneNumber;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get userName;

  /// No description provided for @profileDetails.
  ///
  /// In en, this message translates to:
  /// **'Profile details'**
  String get profileDetails;

  /// No description provided for @medicalInsurance.
  ///
  /// In en, this message translates to:
  /// **'Medical insurance'**
  String get medicalInsurance;

  /// No description provided for @insuranceInformation.
  ///
  /// In en, this message translates to:
  /// **'Insurance information'**
  String get insuranceInformation;

  /// No description provided for @enterYourInformation.
  ///
  /// In en, this message translates to:
  /// **'Enter your information'**
  String get enterYourInformation;

  /// No description provided for @selectInsuranceCompanyName.
  ///
  /// In en, this message translates to:
  /// **'Select insurance company name'**
  String get selectInsuranceCompanyName;

  /// No description provided for @insuranceImage.
  ///
  /// In en, this message translates to:
  /// **'Insurance image'**
  String get insuranceImage;

  /// No description provided for @clickHereToUpload2.
  ///
  /// In en, this message translates to:
  /// **'Click here to upload'**
  String get clickHereToUpload2;

  /// No description provided for @delivering.
  ///
  /// In en, this message translates to:
  /// **'Delivering'**
  String get delivering;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @prescription_no.
  ///
  /// In en, this message translates to:
  /// **'Prescription No'**
  String get prescription_no;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// No description provided for @prescription_has_been_received.
  ///
  /// In en, this message translates to:
  /// **'Prescription has been received'**
  String get prescription_has_been_received;

  /// No description provided for @view_prescription.
  ///
  /// In en, this message translates to:
  /// **'View prescription'**
  String get view_prescription;

  /// No description provided for @upload_your_prescription.
  ///
  /// In en, this message translates to:
  /// **'Upload your prescription'**
  String get upload_your_prescription;

  /// No description provided for @upload_your_prescription_and_top_doctors_will_help_you_to_know_your_prescription.
  ///
  /// In en, this message translates to:
  /// **'Upload your prescription and top doctors will help you to know your prescription'**
  String
  get upload_your_prescription_and_top_doctors_will_help_you_to_know_your_prescription;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @prescription_contents.
  ///
  /// In en, this message translates to:
  /// **'Prescription contents'**
  String get prescription_contents;

  /// No description provided for @orderAll.
  ///
  /// In en, this message translates to:
  /// **'Order all'**
  String get orderAll;

  /// No description provided for @errorMessage.
  ///
  /// In en, this message translates to:
  /// **'error occured'**
  String get errorMessage;

  /// No description provided for @connectionTimeOut.
  ///
  /// In en, this message translates to:
  /// **'connectionTimeOut'**
  String get connectionTimeOut;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'connectionTimeOut'**
  String get noInternetConnection;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'success'**
  String get success;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @home_delivery_in_24_hours.
  ///
  /// In en, this message translates to:
  /// **'Home delivery in 24 hours'**
  String get home_delivery_in_24_hours;

  /// No description provided for @fourty_percent_discount_on_second_item.
  ///
  /// In en, this message translates to:
  /// **'40% discount on second item'**
  String get fourty_percent_discount_on_second_item;

  /// No description provided for @add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get add_to_cart;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @specifications.
  ///
  /// In en, this message translates to:
  /// **'Specifications'**
  String get specifications;

  /// No description provided for @client_reviews.
  ///
  /// In en, this message translates to:
  /// **'Client reviews'**
  String get client_reviews;

  /// No description provided for @medicine_details.
  ///
  /// In en, this message translates to:
  /// **'Medicine details'**
  String get medicine_details;

  /// No description provided for @medicine_specifications.
  ///
  /// In en, this message translates to:
  /// **'Medicine specifications'**
  String get medicine_specifications;

  /// No description provided for @shop_by_category.
  ///
  /// In en, this message translates to:
  /// **'Shop by category'**
  String get shop_by_category;

  /// No description provided for @shop_by_brand.
  ///
  /// In en, this message translates to:
  /// **'Shop by brand'**
  String get shop_by_brand;

  /// No description provided for @save_filter.
  ///
  /// In en, this message translates to:
  /// **'Save filter'**
  String get save_filter;

  /// No description provided for @brands.
  ///
  /// In en, this message translates to:
  /// **'Brands'**
  String get brands;

  /// No description provided for @last_offers.
  ///
  /// In en, this message translates to:
  /// **'Last Offers'**
  String get last_offers;

  /// No description provided for @our_latest_products.
  ///
  /// In en, this message translates to:
  /// **'Our latest products'**
  String get our_latest_products;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'خصم'**
  String get discount;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @vendorProducts.
  ///
  /// In en, this message translates to:
  /// **'Vendor Products'**
  String get vendorProducts;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @pleaseLogin.
  ///
  /// In en, this message translates to:
  /// **'الرجاء تسجيل الدخول'**
  String get pleaseLogin;

  /// No description provided for @noProductInCart.
  ///
  /// In en, this message translates to:
  /// **'لا يوجد منتجات في السلة'**
  String get noProductInCart;

  /// No description provided for @shipping.
  ///
  /// In en, this message translates to:
  /// **'shipping'**
  String get shipping;

  /// No description provided for @goToCart.
  ///
  /// In en, this message translates to:
  /// **'go To Cart'**
  String get goToCart;

  /// No description provided for @totalCartPrice.
  ///
  /// In en, this message translates to:
  /// **'Total Cart Price '**
  String get totalCartPrice;

  /// No description provided for @totalCartPriceBeforeDiscount.
  ///
  /// In en, this message translates to:
  /// **'Total Cart Price Before Discount'**
  String get totalCartPriceBeforeDiscount;

  /// No description provided for @select_address.
  ///
  /// In en, this message translates to:
  /// **'Select the delivery address'**
  String get select_address;

  /// No description provided for @noAddress.
  ///
  /// In en, this message translates to:
  /// **'No registered address'**
  String get noAddress;

  /// No description provided for @add_address.
  ///
  /// In en, this message translates to:
  /// **'Add address'**
  String get add_address;

  /// No description provided for @new_address.
  ///
  /// In en, this message translates to:
  /// **'new address'**
  String get new_address;

  /// No description provided for @edit_address.
  ///
  /// In en, this message translates to:
  /// **'Edit address'**
  String get edit_address;

  /// No description provided for @add_new_address.
  ///
  /// In en, this message translates to:
  /// **'Add a new address'**
  String get add_new_address;

  /// No description provided for @you_have_to_allow.
  ///
  /// In en, this message translates to:
  /// **'You have to allow location permission to use your location'**
  String get you_have_to_allow;

  /// No description provided for @you_denied_location_permission.
  ///
  /// In en, this message translates to:
  /// **'You denied location permission forever. Please allow location permission from your app settings and receive more accurate delivery.'**
  String get you_denied_location_permission;

  /// No description provided for @please_enable_location_permission_from_browser_settings.
  ///
  /// In en, this message translates to:
  /// **'Please enable location permission from browser settings'**
  String get please_enable_location_permission_from_browser_settings;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @pick_an_address.
  ///
  /// In en, this message translates to:
  /// **'Pick an address'**
  String get pick_an_address;

  /// No description provided for @search_location.
  ///
  /// In en, this message translates to:
  /// **'Search for location'**
  String get search_location;

  /// No description provided for @pick_address.
  ///
  /// In en, this message translates to:
  /// **'Pick Address'**
  String get pick_address;

  /// No description provided for @address_name.
  ///
  /// In en, this message translates to:
  /// **'address name'**
  String get address_name;

  /// No description provided for @governorate.
  ///
  /// In en, this message translates to:
  /// **'Governorate'**
  String get governorate;

  /// No description provided for @address_details.
  ///
  /// In en, this message translates to:
  /// **'Address Details'**
  String get address_details;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @make_the_address_my_main_headline.
  ///
  /// In en, this message translates to:
  /// **'Make the Address my main headline'**
  String get make_the_address_my_main_headline;

  /// No description provided for @address_name_Required.
  ///
  /// In en, this message translates to:
  /// **'address name is required'**
  String get address_name_Required;

  /// No description provided for @governorate_Required.
  ///
  /// In en, this message translates to:
  /// **'Governorate is required'**
  String get governorate_Required;

  /// No description provided for @address_details_Required.
  ///
  /// In en, this message translates to:
  /// **'Address Details is required'**
  String get address_details_Required;

  /// No description provided for @phone_number_Required.
  ///
  /// In en, this message translates to:
  /// **'Phone Number is required'**
  String get phone_number_Required;

  /// No description provided for @successEditAddress.
  ///
  /// In en, this message translates to:
  /// **'Success Edit Address'**
  String get successEditAddress;

  /// No description provided for @successCreateAddress.
  ///
  /// In en, this message translates to:
  /// **'Success Create Address'**
  String get successCreateAddress;

  /// No description provided for @bestOffers.
  ///
  /// In en, this message translates to:
  /// **'Best Offers'**
  String get bestOffers;

  /// No description provided for @changeAddress.
  ///
  /// In en, this message translates to:
  /// **'change Address'**
  String get changeAddress;

  /// No description provided for @serialNumberEmail.
  ///
  /// In en, this message translates to:
  /// **'Serial Number/Email'**
  String get serialNumberEmail;

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'يرجي الانتظار ...'**
  String get pleaseWait;

  /// No description provided for @checkIn.
  ///
  /// In en, this message translates to:
  /// **'Check In'**
  String get checkIn;

  /// No description provided for @attend.
  ///
  /// In en, this message translates to:
  /// **'Attend'**
  String get attend;

  /// No description provided for @clockIn.
  ///
  /// In en, this message translates to:
  /// **'Clock-In'**
  String get clockIn;

  /// No description provided for @clockOut.
  ///
  /// In en, this message translates to:
  /// **'Clock-Out'**
  String get clockOut;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @absentRequest.
  ///
  /// In en, this message translates to:
  /// **'Absent Request'**
  String get absentRequest;

  /// No description provided for @requestReason.
  ///
  /// In en, this message translates to:
  /// **'Request Reason'**
  String get requestReason;

  /// No description provided for @attendanceLog.
  ///
  /// In en, this message translates to:
  /// **'Attendance Log'**
  String get attendanceLog;

  /// No description provided for @workHours.
  ///
  /// In en, this message translates to:
  /// **'Work Hours'**
  String get workHours;

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'Hour'**
  String get hour;

  /// No description provided for @requestClocInAt.
  ///
  /// In en, this message translates to:
  /// **'Request Clock-In At'**
  String get requestClocInAt;

  /// No description provided for @requestClocOutAt.
  ///
  /// In en, this message translates to:
  /// **'Request Clock-Out At'**
  String get requestClocOutAt;

  /// No description provided for @attendanceStatistics.
  ///
  /// In en, this message translates to:
  /// **'Attendance Statistics'**
  String get attendanceStatistics;

  /// No description provided for @total_days.
  ///
  /// In en, this message translates to:
  /// **'Total Days'**
  String get total_days;

  /// No description provided for @present_days.
  ///
  /// In en, this message translates to:
  /// **'Present Days'**
  String get present_days;

  /// No description provided for @absent_days.
  ///
  /// In en, this message translates to:
  /// **'Absent Days'**
  String get absent_days;

  /// No description provided for @late_days.
  ///
  /// In en, this message translates to:
  /// **'Late Days'**
  String get late_days;

  /// No description provided for @early_leave_days.
  ///
  /// In en, this message translates to:
  /// **'Early Leave Days'**
  String get early_leave_days;

  /// No description provided for @attendance_percentage.
  ///
  /// In en, this message translates to:
  /// **'Attendance Percentage'**
  String get attendance_percentage;

  /// No description provided for @total_work_hours.
  ///
  /// In en, this message translates to:
  /// **'Total Work Hours'**
  String get total_work_hours;

  /// No description provided for @avg_work_hours.
  ///
  /// In en, this message translates to:
  /// **'Average Work Hours'**
  String get avg_work_hours;

  /// No description provided for @checkInDone.
  ///
  /// In en, this message translates to:
  /// **'Attendance is registered'**
  String get checkInDone;

  /// No description provided for @checkOutDone.
  ///
  /// In en, this message translates to:
  /// **'Dismiss is registered'**
  String get checkOutDone;

  /// No description provided for @checkInDetails.
  ///
  /// In en, this message translates to:
  /// **'Attendance Details'**
  String get checkInDetails;

  /// No description provided for @tickets.
  ///
  /// In en, this message translates to:
  /// **'Support Tickets'**
  String get tickets;

  /// No description provided for @addTickets.
  ///
  /// In en, this message translates to:
  /// **'add Support Tickets'**
  String get addTickets;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'open'**
  String get open;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In Progress'**
  String get inProgress;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @resolution.
  ///
  /// In en, this message translates to:
  /// **'Resolution'**
  String get resolution;

  /// No description provided for @ticketTitle.
  ///
  /// In en, this message translates to:
  /// **'Ticket Title'**
  String get ticketTitle;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @priority.
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get priority;

  /// No description provided for @issuesDescription.
  ///
  /// In en, this message translates to:
  /// **'Issues Description'**
  String get issuesDescription;

  /// No description provided for @thisFieldIsRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get thisFieldIsRequired;

  /// No description provided for @low.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @high.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// No description provided for @urgent.
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get urgent;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @document.
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get document;

  /// No description provided for @issuesImage.
  ///
  /// In en, this message translates to:
  /// **'Issues Image'**
  String get issuesImage;

  /// No description provided for @addIssuesImage.
  ///
  /// In en, this message translates to:
  /// **'Add Issues Images'**
  String get addIssuesImage;

  /// No description provided for @successCreateTicket.
  ///
  /// In en, this message translates to:
  /// **'Success Create Support Ticket'**
  String get successCreateTicket;

  /// No description provided for @yourTickets.
  ///
  /// In en, this message translates to:
  /// **'Your Support Tickets'**
  String get yourTickets;

  /// No description provided for @technical.
  ///
  /// In en, this message translates to:
  /// **'Technical'**
  String get technical;

  /// No description provided for @financial.
  ///
  /// In en, this message translates to:
  /// **'Financial'**
  String get financial;

  /// No description provided for @hR.
  ///
  /// In en, this message translates to:
  /// **'HR'**
  String get hR;

  /// No description provided for @facilities.
  ///
  /// In en, this message translates to:
  /// **'Facilities'**
  String get facilities;

  /// No description provided for @addComment.
  ///
  /// In en, this message translates to:
  /// **'Add Comment'**
  String get addComment;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @open2.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open2;

  /// No description provided for @cantOpenTisFile.
  ///
  /// In en, this message translates to:
  /// **'Can\'t open this file'**
  String get cantOpenTisFile;

  /// No description provided for @successAddComment.
  ///
  /// In en, this message translates to:
  /// **'Success Add Comment'**
  String get successAddComment;

  /// No description provided for @deliverySummery.
  ///
  /// In en, this message translates to:
  /// **'Delivery Summery'**
  String get deliverySummery;

  /// No description provided for @deliveryTypesDistribution.
  ///
  /// In en, this message translates to:
  /// **'Delivery Types Distribution'**
  String get deliveryTypesDistribution;

  /// No description provided for @deliveriesbyDate.
  ///
  /// In en, this message translates to:
  /// **'Deliveries by Date'**
  String get deliveriesbyDate;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'ok'**
  String get ok;

  /// No description provided for @faceId.
  ///
  /// In en, this message translates to:
  /// **'Face ID'**
  String get faceId;

  /// No description provided for @faceId2.
  ///
  /// In en, this message translates to:
  /// **'No photo taken'**
  String get faceId2;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'english'**
  String get english;

  /// No description provided for @addNote.
  ///
  /// In en, this message translates to:
  /// **'Add Notes'**
  String get addNote;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get note;

  /// No description provided for @pleaseAddReportImage.
  ///
  /// In en, this message translates to:
  /// **'Please Add Report Image'**
  String get pleaseAddReportImage;

  /// No description provided for @continuation.
  ///
  /// In en, this message translates to:
  /// **'Continuation'**
  String get continuation;

  /// No description provided for @reportImage.
  ///
  /// In en, this message translates to:
  /// **'Report Image'**
  String get reportImage;

  /// No description provided for @enterCorrectserialNumberEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Correct serialNumberEmail'**
  String get enterCorrectserialNumberEmail;

  /// No description provided for @statistics.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support Ticket'**
  String get support;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @workInformation.
  ///
  /// In en, this message translates to:
  /// **'Work Information'**
  String get workInformation;

  /// No description provided for @enterserialNumberEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter Serial Number/Email'**
  String get enterserialNumberEmail;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @signInWithApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get signInWithApple;

  /// No description provided for @signInWithFacebook.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Facebook'**
  String get signInWithFacebook;

  /// No description provided for @signInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInWithGoogle;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get dontHaveAccount;

  /// No description provided for @select_account_type.
  ///
  /// In en, this message translates to:
  /// **'Select Your Type *'**
  String get select_account_type;

  /// No description provided for @have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Have an account?'**
  String get have_an_account;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get sign_in;

  /// No description provided for @pharmacy.
  ///
  /// In en, this message translates to:
  /// **'Pharmacy'**
  String get pharmacy;

  /// No description provided for @scan_center.
  ///
  /// In en, this message translates to:
  /// **'Scan Center'**
  String get scan_center;

  /// No description provided for @lab.
  ///
  /// In en, this message translates to:
  /// **'Lab'**
  String get lab;

  /// No description provided for @patient.
  ///
  /// In en, this message translates to:
  /// **'Patient'**
  String get patient;

  /// No description provided for @patients.
  ///
  /// In en, this message translates to:
  /// **'Patients'**
  String get patients;

  /// No description provided for @doctor.
  ///
  /// In en, this message translates to:
  /// **'Doctor'**
  String get doctor;

  /// No description provided for @nurse.
  ///
  /// In en, this message translates to:
  /// **'Nurse'**
  String get nurse;

  /// No description provided for @rx_market.
  ///
  /// In en, this message translates to:
  /// **'RX Market'**
  String get rx_market;

  /// No description provided for @haveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Have an account?'**
  String get haveAnAccount;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an Account'**
  String get createAccount;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name *'**
  String get firstName;

  /// No description provided for @enterFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter your First Name'**
  String get enterFirstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name *'**
  String get lastName;

  /// No description provided for @enterLastName.
  ///
  /// In en, this message translates to:
  /// **'Enter your Last Name'**
  String get enterLastName;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your Phone Number'**
  String get enterPhoneNumber;

  /// No description provided for @nationalIdPassportId.
  ///
  /// In en, this message translates to:
  /// **'National ID / Passport ID'**
  String get nationalIdPassportId;

  /// No description provided for @enterNationalIdPassportId.
  ///
  /// In en, this message translates to:
  /// **'Enter your National ID / Passport ID'**
  String get enterNationalIdPassportId;

  /// No description provided for @chooseGender.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Gender'**
  String get chooseGender;

  /// No description provided for @relationship.
  ///
  /// In en, this message translates to:
  /// **'Relationship'**
  String get relationship;

  /// No description provided for @enterYourRelationship.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Relationship'**
  String get enterYourRelationship;

  /// No description provided for @birthDate.
  ///
  /// In en, this message translates to:
  /// **'Birth Of Date'**
  String get birthDate;

  /// No description provided for @imageMaxSize.
  ///
  /// In en, this message translates to:
  /// **'Max Size 240*410'**
  String get imageMaxSize;

  /// No description provided for @chooseBirthDate.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Birth Date'**
  String get chooseBirthDate;

  /// No description provided for @chronicDiseases.
  ///
  /// In en, this message translates to:
  /// **'Chronic diseases'**
  String get chronicDiseases;

  /// No description provided for @haveMedicalInsurance.
  ///
  /// In en, this message translates to:
  /// **'Have Medical Insurance*'**
  String get haveMedicalInsurance;

  /// No description provided for @maxSize.
  ///
  /// In en, this message translates to:
  /// **'Max Size 240 * 410'**
  String get maxSize;

  /// No description provided for @dragYourImageHere.
  ///
  /// In en, this message translates to:
  /// **'Drag Your Image Here'**
  String get dragYourImageHere;

  /// No description provided for @chooseDisease.
  ///
  /// In en, this message translates to:
  /// **'Choose Disease'**
  String get chooseDisease;

  /// No description provided for @chooseMedication.
  ///
  /// In en, this message translates to:
  /// **'Choose Medication'**
  String get chooseMedication;

  /// No description provided for @chooseYourPastSurgeries.
  ///
  /// In en, this message translates to:
  /// **'Choose your past surgeries'**
  String get chooseYourPastSurgeries;

  /// No description provided for @childhoodIllnesses.
  ///
  /// In en, this message translates to:
  /// **'Childhood illnesses'**
  String get childhoodIllnesses;

  /// No description provided for @familyIllnesses.
  ///
  /// In en, this message translates to:
  /// **'Family illnesses'**
  String get familyIllnesses;

  /// No description provided for @surgeries.
  ///
  /// In en, this message translates to:
  /// **'Surgeries'**
  String get surgeries;

  /// No description provided for @enterYourWeight.
  ///
  /// In en, this message translates to:
  /// **'Enter your weight'**
  String get enterYourWeight;

  /// No description provided for @addYourInformation.
  ///
  /// In en, this message translates to:
  /// **'Add your information'**
  String get addYourInformation;

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'No Data'**
  String get noData;

  /// No description provided for @addMedicalHistoryMsg.
  ///
  /// In en, this message translates to:
  /// **'Let’s Add Your Medical History to help doctors diagnoses you correctly.'**
  String get addMedicalHistoryMsg;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @bloodType.
  ///
  /// In en, this message translates to:
  /// **'Blood Type'**
  String get bloodType;

  /// No description provided for @selectType.
  ///
  /// In en, this message translates to:
  /// **'Select Type'**
  String get selectType;

  /// No description provided for @bloodPressure.
  ///
  /// In en, this message translates to:
  /// **'Blood pressure'**
  String get bloodPressure;

  /// No description provided for @heartRate.
  ///
  /// In en, this message translates to:
  /// **'Heart rate'**
  String get heartRate;

  /// No description provided for @chronicMedications.
  ///
  /// In en, this message translates to:
  /// **'Chronic Medications'**
  String get chronicMedications;

  /// No description provided for @insertYourMedicalInsuranceImage.
  ///
  /// In en, this message translates to:
  /// **'Insert Your Medical Insurance Image *'**
  String get insertYourMedicalInsuranceImage;

  /// No description provided for @verifyAccount.
  ///
  /// In en, this message translates to:
  /// **'Verify Your Account'**
  String get verifyAccount;

  /// No description provided for @checkYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Check your email'**
  String get checkYourEmail;

  /// No description provided for @forVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'for the verification code'**
  String get forVerificationCode;

  /// No description provided for @verificationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Verification successful!'**
  String get verificationSuccess;

  /// No description provided for @invalidOtp.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP! Please try again.'**
  String get invalidOtp;

  /// No description provided for @didNotReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive the code? '**
  String get didNotReceiveCode;

  /// No description provided for @codeResent.
  ///
  /// In en, this message translates to:
  /// **'A new verification code has been sent!'**
  String get codeResent;

  /// No description provided for @verificationDone.
  ///
  /// In en, this message translates to:
  /// **'Verification Done!'**
  String get verificationDone;

  /// No description provided for @welcomeToCommunity.
  ///
  /// In en, this message translates to:
  /// **'Welcome To Your Community'**
  String get welcomeToCommunity;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'sign Up'**
  String get signUp;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @idNom.
  ///
  /// In en, this message translates to:
  /// **'رقم الهوية'**
  String get idNom;

  /// No description provided for @searchForDoctorsNursesLabs.
  ///
  /// In en, this message translates to:
  /// **'Search for Doctors, Nurses, Labs'**
  String get searchForDoctorsNursesLabs;

  /// No description provided for @pleaseCompleteYourMedicalHistory.
  ///
  /// In en, this message translates to:
  /// **'Please Complete Your Medical History'**
  String get pleaseCompleteYourMedicalHistory;

  /// No description provided for @goToSetting.
  ///
  /// In en, this message translates to:
  /// **'Go To Setting'**
  String get goToSetting;

  /// No description provided for @publicAwareness.
  ///
  /// In en, this message translates to:
  /// **'Public Awareness'**
  String get publicAwareness;

  /// No description provided for @specialists.
  ///
  /// In en, this message translates to:
  /// **'specialists '**
  String get specialists;

  /// No description provided for @bestDoctors.
  ///
  /// In en, this message translates to:
  /// **'Top Reviewed Doctors '**
  String get bestDoctors;

  /// No description provided for @availableNow.
  ///
  /// In en, this message translates to:
  /// **'Available Now'**
  String get availableNow;

  /// No description provided for @bookingNow.
  ///
  /// In en, this message translates to:
  /// **'Booking Now'**
  String get bookingNow;

  /// No description provided for @results.
  ///
  /// In en, this message translates to:
  /// **'Results'**
  String get results;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort by :'**
  String get sortBy;

  /// No description provided for @dailyMedicine.
  ///
  /// In en, this message translates to:
  /// **'Daily Medicine'**
  String get dailyMedicine;

  /// No description provided for @reminder.
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get reminder;

  /// No description provided for @howManyTimes.
  ///
  /// In en, this message translates to:
  /// **'How many times?'**
  String get howManyTimes;

  /// No description provided for @selectTimes.
  ///
  /// In en, this message translates to:
  /// **'Select times'**
  String get selectTimes;

  /// No description provided for @dosage.
  ///
  /// In en, this message translates to:
  /// **'Dosage'**
  String get dosage;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @selectDuration.
  ///
  /// In en, this message translates to:
  /// **'Select duration'**
  String get selectDuration;

  /// No description provided for @addTime.
  ///
  /// In en, this message translates to:
  /// **'Add Time'**
  String get addTime;

  /// No description provided for @addAnotherDuration.
  ///
  /// In en, this message translates to:
  /// **'Add another duration'**
  String get addAnotherDuration;

  /// No description provided for @nameOfMedicine.
  ///
  /// In en, this message translates to:
  /// **'Name of Medicine'**
  String get nameOfMedicine;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @labs.
  ///
  /// In en, this message translates to:
  /// **'Labs'**
  String get labs;

  /// No description provided for @viewdetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewdetails;

  /// No description provided for @bookNow.
  ///
  /// In en, this message translates to:
  /// **'Book Now'**
  String get bookNow;

  /// No description provided for @inLab.
  ///
  /// In en, this message translates to:
  /// **'In Lab'**
  String get inLab;

  /// No description provided for @inHome.
  ///
  /// In en, this message translates to:
  /// **'In Home'**
  String get inHome;

  /// No description provided for @addNewPatient.
  ///
  /// In en, this message translates to:
  /// **'Add New Patient'**
  String get addNewPatient;

  /// No description provided for @selectpatients.
  ///
  /// In en, this message translates to:
  /// **'Select Patients'**
  String get selectpatients;

  /// No description provided for @bookAppointment.
  ///
  /// In en, this message translates to:
  /// **'Book Appointment'**
  String get bookAppointment;

  /// No description provided for @selectbranches.
  ///
  /// In en, this message translates to:
  /// **'Select Lab Branches '**
  String get selectbranches;

  /// No description provided for @selectdate.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectdate;

  /// No description provided for @selecttest.
  ///
  /// In en, this message translates to:
  /// **'Select Test'**
  String get selecttest;

  /// No description provided for @scancenter.
  ///
  /// In en, this message translates to:
  /// **'Scan Center'**
  String get scancenter;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get aboutMe;

  /// No description provided for @aboutClinicsAndPrices.
  ///
  /// In en, this message translates to:
  /// **'About clinics & prices'**
  String get aboutClinicsAndPrices;

  /// No description provided for @branches.
  ///
  /// In en, this message translates to:
  /// **'Branches'**
  String get branches;

  /// No description provided for @yourBalance.
  ///
  /// In en, this message translates to:
  /// **'Your Balance'**
  String get yourBalance;

  /// No description provided for @payOnClinic.
  ///
  /// In en, this message translates to:
  /// **'Pay on Clinic'**
  String get payOnClinic;

  /// No description provided for @enterYourCreditCardHolderName.
  ///
  /// In en, this message translates to:
  /// **'Enter your Credit card  holder Name'**
  String get enterYourCreditCardHolderName;

  /// No description provided for @fawry.
  ///
  /// In en, this message translates to:
  /// **'Fawry'**
  String get fawry;

  /// No description provided for @creditCardDateFormat.
  ///
  /// In en, this message translates to:
  /// **'MM/YYYY'**
  String get creditCardDateFormat;

  /// No description provided for @pricing.
  ///
  /// In en, this message translates to:
  /// **'Pricing'**
  String get pricing;

  /// No description provided for @appointmentSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Your appointment was successfully done!'**
  String get appointmentSuccessTitle;

  /// No description provided for @appointmentSuccessSubTitle.
  ///
  /// In en, this message translates to:
  /// **'check your appointments to view your reservation'**
  String get appointmentSuccessSubTitle;

  /// No description provided for @appointmentPrice.
  ///
  /// In en, this message translates to:
  /// **'Appointment price'**
  String get appointmentPrice;

  /// No description provided for @appointmentArgentPrice.
  ///
  /// In en, this message translates to:
  /// **'Appointment Argent price'**
  String get appointmentArgentPrice;

  /// No description provided for @consultationPrice.
  ///
  /// In en, this message translates to:
  /// **'Consultation price'**
  String get consultationPrice;

  /// No description provided for @viewMore.
  ///
  /// In en, this message translates to:
  /// **'View More'**
  String get viewMore;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @selectPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Select A payment method'**
  String get selectPaymentMethod;

  /// No description provided for @selectClinic.
  ///
  /// In en, this message translates to:
  /// **'Select Clinic'**
  String get selectClinic;

  /// No description provided for @chooseYourAnswer.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Answer'**
  String get chooseYourAnswer;

  /// No description provided for @selectTime.
  ///
  /// In en, this message translates to:
  /// **'Select Time'**
  String get selectTime;

  /// No description provided for @appointmentType.
  ///
  /// In en, this message translates to:
  /// **'Appointment Type'**
  String get appointmentType;

  /// No description provided for @whatAreYouComplainingAboutQuestion.
  ///
  /// In en, this message translates to:
  /// **'What are you complaining about?'**
  String get whatAreYouComplainingAboutQuestion;

  /// No description provided for @writeYourSymptomsOfFatigue.
  ///
  /// In en, this message translates to:
  /// **'Write Your Symptoms of fatigue'**
  String get writeYourSymptomsOfFatigue;

  /// No description provided for @clinicDetails.
  ///
  /// In en, this message translates to:
  /// **'Clinic Details'**
  String get clinicDetails;

  /// No description provided for @labdetails.
  ///
  /// In en, this message translates to:
  /// **'Al Mokhtabar Laboratories represents the largest network in Egypt with more than 218 branches across the country It is considered the first medical laboratory in Egypt to use \'work cell\' technology...'**
  String get labdetails;

  /// No description provided for @prices.
  ///
  /// In en, this message translates to:
  /// **'Prices'**
  String get prices;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @clients.
  ///
  /// In en, this message translates to:
  /// **'Clients'**
  String get clients;

  /// No description provided for @orderNow.
  ///
  /// In en, this message translates to:
  /// **'Order Now'**
  String get orderNow;

  /// No description provided for @addItem.
  ///
  /// In en, this message translates to:
  /// **'Add Item'**
  String get addItem;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// No description provided for @subtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotal;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @takeaway.
  ///
  /// In en, this message translates to:
  /// **'Takeaway'**
  String get takeaway;

  /// No description provided for @payWithCreditCard.
  ///
  /// In en, this message translates to:
  /// **'Pay With Credit Card'**
  String get payWithCreditCard;

  /// No description provided for @payOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Pay On Delivery'**
  String get payOnDelivery;

  /// No description provided for @payWithWallet.
  ///
  /// In en, this message translates to:
  /// **'Pay With Wallet'**
  String get payWithWallet;

  /// No description provided for @payWithFawry.
  ///
  /// In en, this message translates to:
  /// **'Pay With Fawry'**
  String get payWithFawry;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @acount.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get acount;

  /// No description provided for @consultationlogs.
  ///
  /// In en, this message translates to:
  /// **'Consultation Logs'**
  String get consultationlogs;

  /// No description provided for @paymentinformation.
  ///
  /// In en, this message translates to:
  /// **'Payment Information'**
  String get paymentinformation;

  /// No description provided for @addRelevant.
  ///
  /// In en, this message translates to:
  /// **'Add Relevant'**
  String get addRelevant;

  /// No description provided for @addRelevantInformation.
  ///
  /// In en, this message translates to:
  /// **'Add Relevant Information'**
  String get addRelevantInformation;

  /// No description provided for @medicalhistory.
  ///
  /// In en, this message translates to:
  /// **'Medical History'**
  String get medicalhistory;

  /// No description provided for @personalinfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Info'**
  String get personalinfo;

  /// No description provided for @passportID.
  ///
  /// In en, this message translates to:
  /// **'Passport ID'**
  String get passportID;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @others.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get others;

  /// No description provided for @contactus.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactus;

  /// No description provided for @faq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faq;

  /// No description provided for @privcyandpolicy.
  ///
  /// In en, this message translates to:
  /// **' Privacy and Policy'**
  String get privcyandpolicy;

  /// No description provided for @termsandsupport.
  ///
  /// In en, this message translates to:
  /// **'Terms and Support'**
  String get termsandsupport;

  /// No description provided for @medicine.
  ///
  /// In en, this message translates to:
  /// **'Medicine'**
  String get medicine;

  /// No description provided for @appointment.
  ///
  /// In en, this message translates to:
  /// **'Appointment'**
  String get appointment;

  /// No description provided for @myorders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myorders;

  /// No description provided for @nationalId.
  ///
  /// In en, this message translates to:
  /// **'National Id'**
  String get nationalId;

  /// No description provided for @enterNationalId.
  ///
  /// In en, this message translates to:
  /// **'Enter National Id'**
  String get enterNationalId;

  /// No description provided for @addrelevant.
  ///
  /// In en, this message translates to:
  /// **'Add Relevant'**
  String get addrelevant;

  /// No description provided for @savedCards.
  ///
  /// In en, this message translates to:
  /// **'Saved Cards'**
  String get savedCards;

  /// No description provided for @newCard.
  ///
  /// In en, this message translates to:
  /// **'New Card'**
  String get newCard;

  /// No description provided for @addNewCard.
  ///
  /// In en, this message translates to:
  /// **'Add New Card'**
  String get addNewCard;

  /// No description provided for @chargeYourBalance.
  ///
  /// In en, this message translates to:
  /// **'Charge Your Balance'**
  String get chargeYourBalance;

  /// No description provided for @walletNumber.
  ///
  /// In en, this message translates to:
  /// **'Wallet Number'**
  String get walletNumber;

  /// No description provided for @enterWalletNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Wallet Number'**
  String get enterWalletNumber;

  /// No description provided for @theAmount.
  ///
  /// In en, this message translates to:
  /// **'The Amount'**
  String get theAmount;

  /// No description provided for @enterTheAmountYouWantToCharge.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount you want to charge'**
  String get enterTheAmountYouWantToCharge;

  /// No description provided for @cardInformation.
  ///
  /// In en, this message translates to:
  /// **'Card Information'**
  String get cardInformation;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get completed;

  /// No description provided for @noImageSelected.
  ///
  /// In en, this message translates to:
  /// **'No Image Selected'**
  String get noImageSelected;

  /// No description provided for @addAnotherImage.
  ///
  /// In en, this message translates to:
  /// **'Add Another Image'**
  String get addAnotherImage;

  /// No description provided for @saveEdit.
  ///
  /// In en, this message translates to:
  /// **'Save Edit'**
  String get saveEdit;

  /// No description provided for @addYourRelevant.
  ///
  /// In en, this message translates to:
  /// **'Add Your Relevant'**
  String get addYourRelevant;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMore;

  /// No description provided for @viewAllBlog.
  ///
  /// In en, this message translates to:
  /// **'View all Blog'**
  String get viewAllBlog;

  /// No description provided for @times.
  ///
  /// In en, this message translates to:
  /// **'Times'**
  String get times;

  /// No description provided for @doctors.
  ///
  /// In en, this message translates to:
  /// **'Doctors'**
  String get doctors;

  /// No description provided for @homeNurse.
  ///
  /// In en, this message translates to:
  /// **'home Nurse'**
  String get homeNurse;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @answer.
  ///
  /// In en, this message translates to:
  /// **'Answer'**
  String get answer;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @ans.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing Lorem ipsum dolor sit amet, consectetur adipiscing'**
  String get ans;

  /// No description provided for @contactwithdoc.
  ///
  /// In en, this message translates to:
  /// **'How can I contact the doctor?'**
  String get contactwithdoc;

  /// No description provided for @serchdoclabs.
  ///
  /// In en, this message translates to:
  /// **'Search For Doctors, Nurses, Labs...'**
  String get serchdoclabs;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @contactinfo.
  ///
  /// In en, this message translates to:
  /// **'Contact Information'**
  String get contactinfo;

  /// No description provided for @call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// No description provided for @callagain.
  ///
  /// In en, this message translates to:
  /// **'Call Again'**
  String get callagain;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @mainMenu.
  ///
  /// In en, this message translates to:
  /// **'Main menu'**
  String get mainMenu;

  /// No description provided for @pharmacys.
  ///
  /// In en, this message translates to:
  /// **'Pharmacys'**
  String get pharmacys;

  /// No description provided for @yourPrescriptions.
  ///
  /// In en, this message translates to:
  /// **'Your Prescriptions'**
  String get yourPrescriptions;

  /// No description provided for @relevantPrescriptions.
  ///
  /// In en, this message translates to:
  /// **'Relevant Prescriptions'**
  String get relevantPrescriptions;

  /// No description provided for @spechDemo.
  ///
  /// In en, this message translates to:
  /// **'Dentistry . Examination'**
  String get spechDemo;

  /// No description provided for @diagnoseAndMedicine.
  ///
  /// In en, this message translates to:
  /// **'Diagnose & Medicine'**
  String get diagnoseAndMedicine;

  /// No description provided for @testsAndScans.
  ///
  /// In en, this message translates to:
  /// **'Tests & Scans'**
  String get testsAndScans;

  /// No description provided for @loremText.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat'**
  String get loremText;

  /// No description provided for @diagnose.
  ///
  /// In en, this message translates to:
  /// **'Diagnose'**
  String get diagnose;

  /// No description provided for @twiceBerWeek.
  ///
  /// In en, this message translates to:
  /// **'Twice per day'**
  String get twiceBerWeek;

  /// No description provided for @medicines.
  ///
  /// In en, this message translates to:
  /// **'Medicines'**
  String get medicines;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @capsule.
  ///
  /// In en, this message translates to:
  /// **'Capsule'**
  String get capsule;

  /// No description provided for @week.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// No description provided for @twicePerDay.
  ///
  /// In en, this message translates to:
  /// **'Twice per day'**
  String get twicePerDay;

  /// No description provided for @urineTest.
  ///
  /// In en, this message translates to:
  /// **'Urine Test'**
  String get urineTest;

  /// No description provided for @bloodPicture.
  ///
  /// In en, this message translates to:
  /// **'Blood Picture'**
  String get bloodPicture;

  /// No description provided for @scans.
  ///
  /// In en, this message translates to:
  /// **'Scans'**
  String get scans;

  /// No description provided for @noScans.
  ///
  /// In en, this message translates to:
  /// **'No Scans'**
  String get noScans;

  /// No description provided for @examination.
  ///
  /// In en, this message translates to:
  /// **'Examination'**
  String get examination;

  /// No description provided for @dentistry.
  ///
  /// In en, this message translates to:
  /// **'Dentistry'**
  String get dentistry;

  /// No description provided for @deleteAllNotification.
  ///
  /// In en, this message translates to:
  /// **'Do you want to clear all the notifications?'**
  String get deleteAllNotification;

  /// No description provided for @appointmentBookedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your Appointment Was booked Successfully'**
  String get appointmentBookedSuccess;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @neurology.
  ///
  /// In en, this message translates to:
  /// **'Neurology'**
  String get neurology;

  /// No description provided for @orthopedic.
  ///
  /// In en, this message translates to:
  /// **'Orthopedic'**
  String get orthopedic;

  /// No description provided for @ophthalmology.
  ///
  /// In en, this message translates to:
  /// **'Ophthalmology'**
  String get ophthalmology;

  /// No description provided for @orderConfirmedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your Order was successfully confirmed!'**
  String get orderConfirmedSuccess;

  /// No description provided for @goToMyOrders.
  ///
  /// In en, this message translates to:
  /// **'Go to My orders to view your orders list'**
  String get goToMyOrders;

  /// No description provided for @alamawyPharmacy.
  ///
  /// In en, this message translates to:
  /// **'Alamawy Pharmacy'**
  String get alamawyPharmacy;

  /// No description provided for @onHisWay.
  ///
  /// In en, this message translates to:
  /// **'On His Way'**
  String get onHisWay;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @me.
  ///
  /// In en, this message translates to:
  /// **'Me'**
  String get me;

  /// No description provided for @enterYourSerialNumberOrEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your Serial Number/Email'**
  String get enterYourSerialNumberOrEmail;

  /// No description provided for @enterYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your Password'**
  String get enterYourPassword;

  /// No description provided for @forgetYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Your password?'**
  String get forgetYourPassword;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @doNotHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get doNotHaveAnAccount;

  /// No description provided for @haveANiceDay.
  ///
  /// In en, this message translates to:
  /// **'Have a nice day'**
  String get haveANiceDay;
}

class _TranslationsDelegate extends LocalizationsDelegate<Translations> {
  const _TranslationsDelegate();

  @override
  Future<Translations> load(Locale locale) {
    return SynchronousFuture<Translations>(lookupTranslations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_TranslationsDelegate old) => false;
}

Translations lookupTranslations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return TranslationsAr();
    case 'en':
      return TranslationsEn();
  }

  throw FlutterError(
    'Translations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
