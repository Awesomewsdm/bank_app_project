// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerStaticData _$CustomerStaticDataFromJson(Map<String, dynamic> json) {
  return _CustomerStaticData.fromJson(json);
}

/// @nodoc
mixin _$CustomerStaticData {
  String get customerID => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerStaticDataCopyWith<CustomerStaticData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStaticDataCopyWith<$Res> {
  factory $CustomerStaticDataCopyWith(
          CustomerStaticData value, $Res Function(CustomerStaticData) then) =
      _$CustomerStaticDataCopyWithImpl<$Res, CustomerStaticData>;
  @useResult
  $Res call(
      {String customerID, String customerName, String gender, String title});
}

/// @nodoc
class _$CustomerStaticDataCopyWithImpl<$Res, $Val extends CustomerStaticData>
    implements $CustomerStaticDataCopyWith<$Res> {
  _$CustomerStaticDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? customerName = null,
    Object? gender = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerStaticDataCopyWith<$Res>
    implements $CustomerStaticDataCopyWith<$Res> {
  factory _$$_CustomerStaticDataCopyWith(_$_CustomerStaticData value,
          $Res Function(_$_CustomerStaticData) then) =
      __$$_CustomerStaticDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerID, String customerName, String gender, String title});
}

/// @nodoc
class __$$_CustomerStaticDataCopyWithImpl<$Res>
    extends _$CustomerStaticDataCopyWithImpl<$Res, _$_CustomerStaticData>
    implements _$$_CustomerStaticDataCopyWith<$Res> {
  __$$_CustomerStaticDataCopyWithImpl(
      _$_CustomerStaticData _value, $Res Function(_$_CustomerStaticData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? customerName = null,
    Object? gender = null,
    Object? title = null,
  }) {
    return _then(_$_CustomerStaticData(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerStaticData implements _CustomerStaticData {
  _$_CustomerStaticData(
      {required this.customerID,
      required this.customerName,
      required this.gender,
      required this.title});

  factory _$_CustomerStaticData.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerStaticDataFromJson(json);

  @override
  final String customerID;
  @override
  final String customerName;
  @override
  final String gender;
  @override
  final String title;

  @override
  String toString() {
    return 'CustomerStaticData(customerID: $customerID, customerName: $customerName, gender: $gender, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerStaticData &&
            (identical(other.customerID, customerID) ||
                other.customerID == customerID) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerID, customerName, gender, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerStaticDataCopyWith<_$_CustomerStaticData> get copyWith =>
      __$$_CustomerStaticDataCopyWithImpl<_$_CustomerStaticData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerStaticDataToJson(
      this,
    );
  }
}

abstract class _CustomerStaticData implements CustomerStaticData {
  factory _CustomerStaticData(
      {required final String customerID,
      required final String customerName,
      required final String gender,
      required final String title}) = _$_CustomerStaticData;

  factory _CustomerStaticData.fromJson(Map<String, dynamic> json) =
      _$_CustomerStaticData.fromJson;

  @override
  String get customerID;
  @override
  String get customerName;
  @override
  String get gender;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerStaticDataCopyWith<_$_CustomerStaticData> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerTransactionData _$CustomerTransactionDataFromJson(
    Map<String, dynamic> json) {
  return _CustomerTransactionData.fromJson(json);
}

/// @nodoc
mixin _$CustomerTransactionData {
  String get customerID => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  int get transactionAmount => throw _privateConstructorUsedError;
  String get transactionDirection => throw _privateConstructorUsedError;
  String get transactionNarration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerTransactionDataCopyWith<CustomerTransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTransactionDataCopyWith<$Res> {
  factory $CustomerTransactionDataCopyWith(CustomerTransactionData value,
          $Res Function(CustomerTransactionData) then) =
      _$CustomerTransactionDataCopyWithImpl<$Res, CustomerTransactionData>;
  @useResult
  $Res call(
      {String customerID,
      String transactionDate,
      int transactionAmount,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class _$CustomerTransactionDataCopyWithImpl<$Res,
        $Val extends CustomerTransactionData>
    implements $CustomerTransactionDataCopyWith<$Res> {
  _$CustomerTransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? transactionDate = null,
    Object? transactionAmount = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_value.copyWith(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as int,
      transactionDirection: null == transactionDirection
          ? _value.transactionDirection
          : transactionDirection // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNarration: null == transactionNarration
          ? _value.transactionNarration
          : transactionNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerTransactionDataCopyWith<$Res>
    implements $CustomerTransactionDataCopyWith<$Res> {
  factory _$$_CustomerTransactionDataCopyWith(_$_CustomerTransactionData value,
          $Res Function(_$_CustomerTransactionData) then) =
      __$$_CustomerTransactionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerID,
      String transactionDate,
      int transactionAmount,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class __$$_CustomerTransactionDataCopyWithImpl<$Res>
    extends _$CustomerTransactionDataCopyWithImpl<$Res,
        _$_CustomerTransactionData>
    implements _$$_CustomerTransactionDataCopyWith<$Res> {
  __$$_CustomerTransactionDataCopyWithImpl(_$_CustomerTransactionData _value,
      $Res Function(_$_CustomerTransactionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? transactionDate = null,
    Object? transactionAmount = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_$_CustomerTransactionData(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as int,
      transactionDirection: null == transactionDirection
          ? _value.transactionDirection
          : transactionDirection // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNarration: null == transactionNarration
          ? _value.transactionNarration
          : transactionNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerTransactionData implements _CustomerTransactionData {
  _$_CustomerTransactionData(
      {required this.customerID,
      required this.transactionDate,
      required this.transactionAmount,
      required this.transactionDirection,
      required this.transactionNarration});

  factory _$_CustomerTransactionData.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerTransactionDataFromJson(json);

  @override
  final String customerID;
  @override
  final String transactionDate;
  @override
  final int transactionAmount;
  @override
  final String transactionDirection;
  @override
  final String transactionNarration;

  @override
  String toString() {
    return 'CustomerTransactionData(customerID: $customerID, transactionDate: $transactionDate, transactionAmount: $transactionAmount, transactionDirection: $transactionDirection, transactionNarration: $transactionNarration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerTransactionData &&
            (identical(other.customerID, customerID) ||
                other.customerID == customerID) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.transactionAmount, transactionAmount) ||
                other.transactionAmount == transactionAmount) &&
            (identical(other.transactionDirection, transactionDirection) ||
                other.transactionDirection == transactionDirection) &&
            (identical(other.transactionNarration, transactionNarration) ||
                other.transactionNarration == transactionNarration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerID, transactionDate,
      transactionAmount, transactionDirection, transactionNarration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerTransactionDataCopyWith<_$_CustomerTransactionData>
      get copyWith =>
          __$$_CustomerTransactionDataCopyWithImpl<_$_CustomerTransactionData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerTransactionDataToJson(
      this,
    );
  }
}

abstract class _CustomerTransactionData implements CustomerTransactionData {
  factory _CustomerTransactionData(
      {required final String customerID,
      required final String transactionDate,
      required final int transactionAmount,
      required final String transactionDirection,
      required final String transactionNarration}) = _$_CustomerTransactionData;

  factory _CustomerTransactionData.fromJson(Map<String, dynamic> json) =
      _$_CustomerTransactionData.fromJson;

  @override
  String get customerID;
  @override
  String get transactionDate;
  @override
  int get transactionAmount;
  @override
  String get transactionDirection;
  @override
  String get transactionNarration;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerTransactionDataCopyWith<_$_CustomerTransactionData>
      get copyWith => throw _privateConstructorUsedError;
}
