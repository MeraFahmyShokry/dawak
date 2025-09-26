// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegistrationState {
  RegistrationStatus get registrationStatus =>
      throw _privateConstructorUsedError;
  List<UserType> get accountTypes => throw _privateConstructorUsedError;
  UserDto get registerModel => throw _privateConstructorUsedError;
  File? get profileImage => throw _privateConstructorUsedError;
  File? get insuranceImage => throw _privateConstructorUsedError;
  GlobalKey<FormState> get registerKey => throw _privateConstructorUsedError;
  TextEditingController get dobController => throw _privateConstructorUsedError;
  List<Gender> get genders => throw _privateConstructorUsedError;
  List<Item> get maritalStatus => throw _privateConstructorUsedError;
  List<Country> get countries => throw _privateConstructorUsedError;
  List<InsuranceCompany> get companies => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
    RegistrationState value,
    $Res Function(RegistrationState) then,
  ) = _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call({
    RegistrationStatus registrationStatus,
    List<UserType> accountTypes,
    UserDto registerModel,
    File? profileImage,
    File? insuranceImage,
    GlobalKey<FormState> registerKey,
    TextEditingController dobController,
    List<Gender> genders,
    List<Item> maritalStatus,
    List<Country> countries,
    List<InsuranceCompany> companies,
  });

  $RegistrationStatusCopyWith<$Res> get registrationStatus;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationStatus = null,
    Object? accountTypes = null,
    Object? registerModel = null,
    Object? profileImage = freezed,
    Object? insuranceImage = freezed,
    Object? registerKey = null,
    Object? dobController = null,
    Object? genders = null,
    Object? maritalStatus = null,
    Object? countries = null,
    Object? companies = null,
  }) {
    return _then(
      _value.copyWith(
            registrationStatus: null == registrationStatus
                ? _value.registrationStatus
                : registrationStatus // ignore: cast_nullable_to_non_nullable
                      as RegistrationStatus,
            accountTypes: null == accountTypes
                ? _value.accountTypes
                : accountTypes // ignore: cast_nullable_to_non_nullable
                      as List<UserType>,
            registerModel: null == registerModel
                ? _value.registerModel
                : registerModel // ignore: cast_nullable_to_non_nullable
                      as UserDto,
            profileImage: freezed == profileImage
                ? _value.profileImage
                : profileImage // ignore: cast_nullable_to_non_nullable
                      as File?,
            insuranceImage: freezed == insuranceImage
                ? _value.insuranceImage
                : insuranceImage // ignore: cast_nullable_to_non_nullable
                      as File?,
            registerKey: null == registerKey
                ? _value.registerKey
                : registerKey // ignore: cast_nullable_to_non_nullable
                      as GlobalKey<FormState>,
            dobController: null == dobController
                ? _value.dobController
                : dobController // ignore: cast_nullable_to_non_nullable
                      as TextEditingController,
            genders: null == genders
                ? _value.genders
                : genders // ignore: cast_nullable_to_non_nullable
                      as List<Gender>,
            maritalStatus: null == maritalStatus
                ? _value.maritalStatus
                : maritalStatus // ignore: cast_nullable_to_non_nullable
                      as List<Item>,
            countries: null == countries
                ? _value.countries
                : countries // ignore: cast_nullable_to_non_nullable
                      as List<Country>,
            companies: null == companies
                ? _value.companies
                : companies // ignore: cast_nullable_to_non_nullable
                      as List<InsuranceCompany>,
          )
          as $Val,
    );
  }

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationStatusCopyWith<$Res> get registrationStatus {
    return $RegistrationStatusCopyWith<$Res>(_value.registrationStatus, (
      value,
    ) {
      return _then(_value.copyWith(registrationStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(
    _$RegistrationStateImpl value,
    $Res Function(_$RegistrationStateImpl) then,
  ) = __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RegistrationStatus registrationStatus,
    List<UserType> accountTypes,
    UserDto registerModel,
    File? profileImage,
    File? insuranceImage,
    GlobalKey<FormState> registerKey,
    TextEditingController dobController,
    List<Gender> genders,
    List<Item> maritalStatus,
    List<Country> countries,
    List<InsuranceCompany> companies,
  });

  @override
  $RegistrationStatusCopyWith<$Res> get registrationStatus;
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(
    _$RegistrationStateImpl _value,
    $Res Function(_$RegistrationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationStatus = null,
    Object? accountTypes = null,
    Object? registerModel = null,
    Object? profileImage = freezed,
    Object? insuranceImage = freezed,
    Object? registerKey = null,
    Object? dobController = null,
    Object? genders = null,
    Object? maritalStatus = null,
    Object? countries = null,
    Object? companies = null,
  }) {
    return _then(
      _$RegistrationStateImpl(
        registrationStatus: null == registrationStatus
            ? _value.registrationStatus
            : registrationStatus // ignore: cast_nullable_to_non_nullable
                  as RegistrationStatus,
        accountTypes: null == accountTypes
            ? _value._accountTypes
            : accountTypes // ignore: cast_nullable_to_non_nullable
                  as List<UserType>,
        registerModel: null == registerModel
            ? _value.registerModel
            : registerModel // ignore: cast_nullable_to_non_nullable
                  as UserDto,
        profileImage: freezed == profileImage
            ? _value.profileImage
            : profileImage // ignore: cast_nullable_to_non_nullable
                  as File?,
        insuranceImage: freezed == insuranceImage
            ? _value.insuranceImage
            : insuranceImage // ignore: cast_nullable_to_non_nullable
                  as File?,
        registerKey: null == registerKey
            ? _value.registerKey
            : registerKey // ignore: cast_nullable_to_non_nullable
                  as GlobalKey<FormState>,
        dobController: null == dobController
            ? _value.dobController
            : dobController // ignore: cast_nullable_to_non_nullable
                  as TextEditingController,
        genders: null == genders
            ? _value._genders
            : genders // ignore: cast_nullable_to_non_nullable
                  as List<Gender>,
        maritalStatus: null == maritalStatus
            ? _value._maritalStatus
            : maritalStatus // ignore: cast_nullable_to_non_nullable
                  as List<Item>,
        countries: null == countries
            ? _value._countries
            : countries // ignore: cast_nullable_to_non_nullable
                  as List<Country>,
        companies: null == companies
            ? _value._companies
            : companies // ignore: cast_nullable_to_non_nullable
                  as List<InsuranceCompany>,
      ),
    );
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl({
    required this.registrationStatus,
    final List<UserType> accountTypes = const [],
    required this.registerModel,
    this.profileImage,
    this.insuranceImage,
    required this.registerKey,
    required this.dobController,
    final List<Gender> genders = const [],
    final List<Item> maritalStatus = const [],
    final List<Country> countries = const [],
    final List<InsuranceCompany> companies = const [],
  }) : _accountTypes = accountTypes,
       _genders = genders,
       _maritalStatus = maritalStatus,
       _countries = countries,
       _companies = companies;

  @override
  final RegistrationStatus registrationStatus;
  final List<UserType> _accountTypes;
  @override
  @JsonKey()
  List<UserType> get accountTypes {
    if (_accountTypes is EqualUnmodifiableListView) return _accountTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountTypes);
  }

  @override
  final UserDto registerModel;
  @override
  final File? profileImage;
  @override
  final File? insuranceImage;
  @override
  final GlobalKey<FormState> registerKey;
  @override
  final TextEditingController dobController;
  final List<Gender> _genders;
  @override
  @JsonKey()
  List<Gender> get genders {
    if (_genders is EqualUnmodifiableListView) return _genders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genders);
  }

  final List<Item> _maritalStatus;
  @override
  @JsonKey()
  List<Item> get maritalStatus {
    if (_maritalStatus is EqualUnmodifiableListView) return _maritalStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maritalStatus);
  }

  final List<Country> _countries;
  @override
  @JsonKey()
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  final List<InsuranceCompany> _companies;
  @override
  @JsonKey()
  List<InsuranceCompany> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'RegistrationState(registrationStatus: $registrationStatus, accountTypes: $accountTypes, registerModel: $registerModel, profileImage: $profileImage, insuranceImage: $insuranceImage, registerKey: $registerKey, dobController: $dobController, genders: $genders, maritalStatus: $maritalStatus, countries: $countries, companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.registrationStatus, registrationStatus) ||
                other.registrationStatus == registrationStatus) &&
            const DeepCollectionEquality().equals(
              other._accountTypes,
              _accountTypes,
            ) &&
            (identical(other.registerModel, registerModel) ||
                other.registerModel == registerModel) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.insuranceImage, insuranceImage) ||
                other.insuranceImage == insuranceImage) &&
            (identical(other.registerKey, registerKey) ||
                other.registerKey == registerKey) &&
            (identical(other.dobController, dobController) ||
                other.dobController == dobController) &&
            const DeepCollectionEquality().equals(other._genders, _genders) &&
            const DeepCollectionEquality().equals(
              other._maritalStatus,
              _maritalStatus,
            ) &&
            const DeepCollectionEquality().equals(
              other._countries,
              _countries,
            ) &&
            const DeepCollectionEquality().equals(
              other._companies,
              _companies,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    registrationStatus,
    const DeepCollectionEquality().hash(_accountTypes),
    registerModel,
    profileImage,
    insuranceImage,
    registerKey,
    dobController,
    const DeepCollectionEquality().hash(_genders),
    const DeepCollectionEquality().hash(_maritalStatus),
    const DeepCollectionEquality().hash(_countries),
    const DeepCollectionEquality().hash(_companies),
  );

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState({
    required final RegistrationStatus registrationStatus,
    final List<UserType> accountTypes,
    required final UserDto registerModel,
    final File? profileImage,
    final File? insuranceImage,
    required final GlobalKey<FormState> registerKey,
    required final TextEditingController dobController,
    final List<Gender> genders,
    final List<Item> maritalStatus,
    final List<Country> countries,
    final List<InsuranceCompany> companies,
  }) = _$RegistrationStateImpl;

  @override
  RegistrationStatus get registrationStatus;
  @override
  List<UserType> get accountTypes;
  @override
  UserDto get registerModel;
  @override
  File? get profileImage;
  @override
  File? get insuranceImage;
  @override
  GlobalKey<FormState> get registerKey;
  @override
  TextEditingController get dobController;
  @override
  List<Gender> get genders;
  @override
  List<Item> get maritalStatus;
  @override
  List<Country> get countries;
  @override
  List<InsuranceCompany> get companies;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStatusCopyWith<$Res> {
  factory $RegistrationStatusCopyWith(
    RegistrationStatus value,
    $Res Function(RegistrationStatus) then,
  ) = _$RegistrationStatusCopyWithImpl<$Res, RegistrationStatus>;
}

/// @nodoc
class _$RegistrationStatusCopyWithImpl<$Res, $Val extends RegistrationStatus>
    implements $RegistrationStatusCopyWith<$Res> {
  _$RegistrationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegistrationStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RegistrationStatus {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RegistrationStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements RegistrationStatus {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ChangeValueImplCopyWith<$Res> {
  factory _$$ChangeValueImplCopyWith(
    _$ChangeValueImpl value,
    $Res Function(_$ChangeValueImpl) then,
  ) = __$$ChangeValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeValueImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$ChangeValueImpl>
    implements _$$ChangeValueImplCopyWith<$Res> {
  __$$ChangeValueImplCopyWithImpl(
    _$ChangeValueImpl _value,
    $Res Function(_$ChangeValueImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangeValueImpl implements ChangeValue {
  const _$ChangeValueImpl();

  @override
  String toString() {
    return 'RegistrationStatus.changeValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeValueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return changeValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return changeValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return changeValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return changeValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (changeValue != null) {
      return changeValue(this);
    }
    return orElse();
  }
}

abstract class ChangeValue implements RegistrationStatus {
  const factory ChangeValue() = _$ChangeValueImpl;
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
    _$UploadImageImpl value,
    $Res Function(_$UploadImageImpl) then,
  ) = __$$UploadImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
    _$UploadImageImpl _value,
    $Res Function(_$UploadImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadImageImpl implements UploadImage {
  const _$UploadImageImpl();

  @override
  String toString() {
    return 'RegistrationStatus.uploadImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return uploadImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return uploadImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class UploadImage implements RegistrationStatus {
  const factory UploadImage() = _$UploadImageImpl;
}

/// @nodoc
abstract class _$$UploadInsuranceImageImplCopyWith<$Res> {
  factory _$$UploadInsuranceImageImplCopyWith(
    _$UploadInsuranceImageImpl value,
    $Res Function(_$UploadInsuranceImageImpl) then,
  ) = __$$UploadInsuranceImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadInsuranceImageImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$UploadInsuranceImageImpl>
    implements _$$UploadInsuranceImageImplCopyWith<$Res> {
  __$$UploadInsuranceImageImplCopyWithImpl(
    _$UploadInsuranceImageImpl _value,
    $Res Function(_$UploadInsuranceImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadInsuranceImageImpl implements UploadInsuranceImage {
  const _$UploadInsuranceImageImpl();

  @override
  String toString() {
    return 'RegistrationStatus.uploadInsuranceImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadInsuranceImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return uploadInsuranceImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return uploadInsuranceImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (uploadInsuranceImage != null) {
      return uploadInsuranceImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return uploadInsuranceImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return uploadInsuranceImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (uploadInsuranceImage != null) {
      return uploadInsuranceImage(this);
    }
    return orElse();
  }
}

abstract class UploadInsuranceImage implements RegistrationStatus {
  const factory UploadInsuranceImage() = _$UploadInsuranceImageImpl;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<$Res> {
  factory _$$RegisterLoadingImplCopyWith(
    _$RegisterLoadingImpl value,
    $Res Function(_$RegisterLoadingImpl) then,
  ) = __$$RegisterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$RegisterLoadingImpl>
    implements _$$RegisterLoadingImplCopyWith<$Res> {
  __$$RegisterLoadingImplCopyWithImpl(
    _$RegisterLoadingImpl _value,
    $Res Function(_$RegisterLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterLoadingImpl implements RegisterLoading {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'RegistrationStatus.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading implements RegistrationStatus {
  const factory RegisterLoading() = _$RegisterLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterFailureImplCopyWith<$Res> {
  factory _$$RegisterFailureImplCopyWith(
    _$RegisterFailureImpl value,
    $Res Function(_$RegisterFailureImpl) then,
  ) = __$$RegisterFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterFailureImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$RegisterFailureImpl>
    implements _$$RegisterFailureImplCopyWith<$Res> {
  __$$RegisterFailureImplCopyWithImpl(
    _$RegisterFailureImpl _value,
    $Res Function(_$RegisterFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterFailureImpl implements RegisterFailure {
  const _$RegisterFailureImpl();

  @override
  String toString() {
    return 'RegistrationStatus.registerFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return registerFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return registerFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (registerFailure != null) {
      return registerFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return registerFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return registerFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (registerFailure != null) {
      return registerFailure(this);
    }
    return orElse();
  }
}

abstract class RegisterFailure implements RegistrationStatus {
  const factory RegisterFailure() = _$RegisterFailureImpl;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(
    _$RegisterSuccessImpl value,
    $Res Function(_$RegisterSuccessImpl) then,
  ) = __$$RegisterSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
    _$RegisterSuccessImpl _value,
    $Res Function(_$RegisterSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterSuccessImpl implements RegisterSuccess {
  const _$RegisterSuccessImpl();

  @override
  String toString() {
    return 'RegistrationStatus.registerSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return registerSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return registerSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess implements RegistrationStatus {
  const factory RegisterSuccess() = _$RegisterSuccessImpl;
}

/// @nodoc
abstract class _$$MaritalStatusLoadingImplCopyWith<$Res> {
  factory _$$MaritalStatusLoadingImplCopyWith(
    _$MaritalStatusLoadingImpl value,
    $Res Function(_$MaritalStatusLoadingImpl) then,
  ) = __$$MaritalStatusLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaritalStatusLoadingImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$MaritalStatusLoadingImpl>
    implements _$$MaritalStatusLoadingImplCopyWith<$Res> {
  __$$MaritalStatusLoadingImplCopyWithImpl(
    _$MaritalStatusLoadingImpl _value,
    $Res Function(_$MaritalStatusLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaritalStatusLoadingImpl implements MaritalStatusLoading {
  const _$MaritalStatusLoadingImpl();

  @override
  String toString() {
    return 'RegistrationStatus.maritalStatusLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaritalStatusLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return maritalStatusLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return maritalStatusLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (maritalStatusLoading != null) {
      return maritalStatusLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return maritalStatusLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return maritalStatusLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (maritalStatusLoading != null) {
      return maritalStatusLoading(this);
    }
    return orElse();
  }
}

abstract class MaritalStatusLoading implements RegistrationStatus {
  const factory MaritalStatusLoading() = _$MaritalStatusLoadingImpl;
}

/// @nodoc
abstract class _$$MaritalStatusFailureImplCopyWith<$Res> {
  factory _$$MaritalStatusFailureImplCopyWith(
    _$MaritalStatusFailureImpl value,
    $Res Function(_$MaritalStatusFailureImpl) then,
  ) = __$$MaritalStatusFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaritalStatusFailureImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$MaritalStatusFailureImpl>
    implements _$$MaritalStatusFailureImplCopyWith<$Res> {
  __$$MaritalStatusFailureImplCopyWithImpl(
    _$MaritalStatusFailureImpl _value,
    $Res Function(_$MaritalStatusFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaritalStatusFailureImpl implements MaritalStatusFailure {
  const _$MaritalStatusFailureImpl();

  @override
  String toString() {
    return 'RegistrationStatus.maritalStatusFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaritalStatusFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return maritalStatusFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return maritalStatusFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (maritalStatusFailure != null) {
      return maritalStatusFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return maritalStatusFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return maritalStatusFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (maritalStatusFailure != null) {
      return maritalStatusFailure(this);
    }
    return orElse();
  }
}

abstract class MaritalStatusFailure implements RegistrationStatus {
  const factory MaritalStatusFailure() = _$MaritalStatusFailureImpl;
}

/// @nodoc
abstract class _$$MaritalStatusSuccessImplCopyWith<$Res> {
  factory _$$MaritalStatusSuccessImplCopyWith(
    _$MaritalStatusSuccessImpl value,
    $Res Function(_$MaritalStatusSuccessImpl) then,
  ) = __$$MaritalStatusSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaritalStatusSuccessImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$MaritalStatusSuccessImpl>
    implements _$$MaritalStatusSuccessImplCopyWith<$Res> {
  __$$MaritalStatusSuccessImplCopyWithImpl(
    _$MaritalStatusSuccessImpl _value,
    $Res Function(_$MaritalStatusSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaritalStatusSuccessImpl implements MaritalStatusSuccess {
  const _$MaritalStatusSuccessImpl();

  @override
  String toString() {
    return 'RegistrationStatus.maritalStatusSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaritalStatusSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return maritalStatusSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return maritalStatusSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (maritalStatusSuccess != null) {
      return maritalStatusSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return maritalStatusSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return maritalStatusSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (maritalStatusSuccess != null) {
      return maritalStatusSuccess(this);
    }
    return orElse();
  }
}

abstract class MaritalStatusSuccess implements RegistrationStatus {
  const factory MaritalStatusSuccess() = _$MaritalStatusSuccessImpl;
}

/// @nodoc
abstract class _$$SecondLoadingImplCopyWith<$Res> {
  factory _$$SecondLoadingImplCopyWith(
    _$SecondLoadingImpl value,
    $Res Function(_$SecondLoadingImpl) then,
  ) = __$$SecondLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecondLoadingImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$SecondLoadingImpl>
    implements _$$SecondLoadingImplCopyWith<$Res> {
  __$$SecondLoadingImplCopyWithImpl(
    _$SecondLoadingImpl _value,
    $Res Function(_$SecondLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SecondLoadingImpl implements SecondLoading {
  const _$SecondLoadingImpl();

  @override
  String toString() {
    return 'RegistrationStatus.secondLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SecondLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return secondLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return secondLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (secondLoading != null) {
      return secondLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return secondLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return secondLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (secondLoading != null) {
      return secondLoading(this);
    }
    return orElse();
  }
}

abstract class SecondLoading implements RegistrationStatus {
  const factory SecondLoading() = _$SecondLoadingImpl;
}

/// @nodoc
abstract class _$$SecondFailureImplCopyWith<$Res> {
  factory _$$SecondFailureImplCopyWith(
    _$SecondFailureImpl value,
    $Res Function(_$SecondFailureImpl) then,
  ) = __$$SecondFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecondFailureImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$SecondFailureImpl>
    implements _$$SecondFailureImplCopyWith<$Res> {
  __$$SecondFailureImplCopyWithImpl(
    _$SecondFailureImpl _value,
    $Res Function(_$SecondFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SecondFailureImpl implements SecondFailure {
  const _$SecondFailureImpl();

  @override
  String toString() {
    return 'RegistrationStatus.secondFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SecondFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return secondFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return secondFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (secondFailure != null) {
      return secondFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return secondFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return secondFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (secondFailure != null) {
      return secondFailure(this);
    }
    return orElse();
  }
}

abstract class SecondFailure implements RegistrationStatus {
  const factory SecondFailure() = _$SecondFailureImpl;
}

/// @nodoc
abstract class _$$SecondSuccessImplCopyWith<$Res> {
  factory _$$SecondSuccessImplCopyWith(
    _$SecondSuccessImpl value,
    $Res Function(_$SecondSuccessImpl) then,
  ) = __$$SecondSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecondSuccessImplCopyWithImpl<$Res>
    extends _$RegistrationStatusCopyWithImpl<$Res, _$SecondSuccessImpl>
    implements _$$SecondSuccessImplCopyWith<$Res> {
  __$$SecondSuccessImplCopyWithImpl(
    _$SecondSuccessImpl _value,
    $Res Function(_$SecondSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegistrationStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SecondSuccessImpl implements SecondSuccess {
  const _$SecondSuccessImpl();

  @override
  String toString() {
    return 'RegistrationStatus.secondSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SecondSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() changeValue,
    required TResult Function() uploadImage,
    required TResult Function() uploadInsuranceImage,
    required TResult Function() registerLoading,
    required TResult Function() registerFailure,
    required TResult Function() registerSuccess,
    required TResult Function() maritalStatusLoading,
    required TResult Function() maritalStatusFailure,
    required TResult Function() maritalStatusSuccess,
    required TResult Function() secondLoading,
    required TResult Function() secondFailure,
    required TResult Function() secondSuccess,
  }) {
    return secondSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? changeValue,
    TResult? Function()? uploadImage,
    TResult? Function()? uploadInsuranceImage,
    TResult? Function()? registerLoading,
    TResult? Function()? registerFailure,
    TResult? Function()? registerSuccess,
    TResult? Function()? maritalStatusLoading,
    TResult? Function()? maritalStatusFailure,
    TResult? Function()? maritalStatusSuccess,
    TResult? Function()? secondLoading,
    TResult? Function()? secondFailure,
    TResult? Function()? secondSuccess,
  }) {
    return secondSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? changeValue,
    TResult Function()? uploadImage,
    TResult Function()? uploadInsuranceImage,
    TResult Function()? registerLoading,
    TResult Function()? registerFailure,
    TResult Function()? registerSuccess,
    TResult Function()? maritalStatusLoading,
    TResult Function()? maritalStatusFailure,
    TResult Function()? maritalStatusSuccess,
    TResult Function()? secondLoading,
    TResult Function()? secondFailure,
    TResult Function()? secondSuccess,
    required TResult orElse(),
  }) {
    if (secondSuccess != null) {
      return secondSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ChangeValue value) changeValue,
    required TResult Function(UploadImage value) uploadImage,
    required TResult Function(UploadInsuranceImage value) uploadInsuranceImage,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterFailure value) registerFailure,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(MaritalStatusLoading value) maritalStatusLoading,
    required TResult Function(MaritalStatusFailure value) maritalStatusFailure,
    required TResult Function(MaritalStatusSuccess value) maritalStatusSuccess,
    required TResult Function(SecondLoading value) secondLoading,
    required TResult Function(SecondFailure value) secondFailure,
    required TResult Function(SecondSuccess value) secondSuccess,
  }) {
    return secondSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ChangeValue value)? changeValue,
    TResult? Function(UploadImage value)? uploadImage,
    TResult? Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterFailure value)? registerFailure,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult? Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult? Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult? Function(SecondLoading value)? secondLoading,
    TResult? Function(SecondFailure value)? secondFailure,
    TResult? Function(SecondSuccess value)? secondSuccess,
  }) {
    return secondSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ChangeValue value)? changeValue,
    TResult Function(UploadImage value)? uploadImage,
    TResult Function(UploadInsuranceImage value)? uploadInsuranceImage,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterFailure value)? registerFailure,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(MaritalStatusLoading value)? maritalStatusLoading,
    TResult Function(MaritalStatusFailure value)? maritalStatusFailure,
    TResult Function(MaritalStatusSuccess value)? maritalStatusSuccess,
    TResult Function(SecondLoading value)? secondLoading,
    TResult Function(SecondFailure value)? secondFailure,
    TResult Function(SecondSuccess value)? secondSuccess,
    required TResult orElse(),
  }) {
    if (secondSuccess != null) {
      return secondSuccess(this);
    }
    return orElse();
  }
}

abstract class SecondSuccess implements RegistrationStatus {
  const factory SecondSuccess() = _$SecondSuccessImpl;
}
