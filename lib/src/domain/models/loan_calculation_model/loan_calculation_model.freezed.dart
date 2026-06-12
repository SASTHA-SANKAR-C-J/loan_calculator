// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_calculation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoanCalculationModel {

 String get id; double get loanAmount; double get interestRate; int get termMonths; PaymentType get paymentType; double get monthlyPayment; double get totalPayment; double get totalInterest; List<double> get paymentSchedule; DateTime get createdAt;
/// Create a copy of LoanCalculationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoanCalculationModelCopyWith<LoanCalculationModel> get copyWith => _$LoanCalculationModelCopyWithImpl<LoanCalculationModel>(this as LoanCalculationModel, _$identity);

  /// Serializes this LoanCalculationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoanCalculationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.loanAmount, loanAmount) || other.loanAmount == loanAmount)&&(identical(other.interestRate, interestRate) || other.interestRate == interestRate)&&(identical(other.termMonths, termMonths) || other.termMonths == termMonths)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.monthlyPayment, monthlyPayment) || other.monthlyPayment == monthlyPayment)&&(identical(other.totalPayment, totalPayment) || other.totalPayment == totalPayment)&&(identical(other.totalInterest, totalInterest) || other.totalInterest == totalInterest)&&const DeepCollectionEquality().equals(other.paymentSchedule, paymentSchedule)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loanAmount,interestRate,termMonths,paymentType,monthlyPayment,totalPayment,totalInterest,const DeepCollectionEquality().hash(paymentSchedule),createdAt);

@override
String toString() {
  return 'LoanCalculationModel(id: $id, loanAmount: $loanAmount, interestRate: $interestRate, termMonths: $termMonths, paymentType: $paymentType, monthlyPayment: $monthlyPayment, totalPayment: $totalPayment, totalInterest: $totalInterest, paymentSchedule: $paymentSchedule, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $LoanCalculationModelCopyWith<$Res>  {
  factory $LoanCalculationModelCopyWith(LoanCalculationModel value, $Res Function(LoanCalculationModel) _then) = _$LoanCalculationModelCopyWithImpl;
@useResult
$Res call({
 String id, double loanAmount, double interestRate, int termMonths, PaymentType paymentType, double monthlyPayment, double totalPayment, double totalInterest, List<double> paymentSchedule, DateTime createdAt
});




}
/// @nodoc
class _$LoanCalculationModelCopyWithImpl<$Res>
    implements $LoanCalculationModelCopyWith<$Res> {
  _$LoanCalculationModelCopyWithImpl(this._self, this._then);

  final LoanCalculationModel _self;
  final $Res Function(LoanCalculationModel) _then;

/// Create a copy of LoanCalculationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? loanAmount = null,Object? interestRate = null,Object? termMonths = null,Object? paymentType = null,Object? monthlyPayment = null,Object? totalPayment = null,Object? totalInterest = null,Object? paymentSchedule = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanAmount: null == loanAmount ? _self.loanAmount : loanAmount // ignore: cast_nullable_to_non_nullable
as double,interestRate: null == interestRate ? _self.interestRate : interestRate // ignore: cast_nullable_to_non_nullable
as double,termMonths: null == termMonths ? _self.termMonths : termMonths // ignore: cast_nullable_to_non_nullable
as int,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType,monthlyPayment: null == monthlyPayment ? _self.monthlyPayment : monthlyPayment // ignore: cast_nullable_to_non_nullable
as double,totalPayment: null == totalPayment ? _self.totalPayment : totalPayment // ignore: cast_nullable_to_non_nullable
as double,totalInterest: null == totalInterest ? _self.totalInterest : totalInterest // ignore: cast_nullable_to_non_nullable
as double,paymentSchedule: null == paymentSchedule ? _self.paymentSchedule : paymentSchedule // ignore: cast_nullable_to_non_nullable
as List<double>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [LoanCalculationModel].
extension LoanCalculationModelPatterns on LoanCalculationModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoanCalculationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoanCalculationModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoanCalculationModel value)  $default,){
final _that = this;
switch (_that) {
case _LoanCalculationModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoanCalculationModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoanCalculationModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double loanAmount,  double interestRate,  int termMonths,  PaymentType paymentType,  double monthlyPayment,  double totalPayment,  double totalInterest,  List<double> paymentSchedule,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoanCalculationModel() when $default != null:
return $default(_that.id,_that.loanAmount,_that.interestRate,_that.termMonths,_that.paymentType,_that.monthlyPayment,_that.totalPayment,_that.totalInterest,_that.paymentSchedule,_that.createdAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double loanAmount,  double interestRate,  int termMonths,  PaymentType paymentType,  double monthlyPayment,  double totalPayment,  double totalInterest,  List<double> paymentSchedule,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _LoanCalculationModel():
return $default(_that.id,_that.loanAmount,_that.interestRate,_that.termMonths,_that.paymentType,_that.monthlyPayment,_that.totalPayment,_that.totalInterest,_that.paymentSchedule,_that.createdAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double loanAmount,  double interestRate,  int termMonths,  PaymentType paymentType,  double monthlyPayment,  double totalPayment,  double totalInterest,  List<double> paymentSchedule,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _LoanCalculationModel() when $default != null:
return $default(_that.id,_that.loanAmount,_that.interestRate,_that.termMonths,_that.paymentType,_that.monthlyPayment,_that.totalPayment,_that.totalInterest,_that.paymentSchedule,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoanCalculationModel implements LoanCalculationModel {
  const _LoanCalculationModel({required this.id, required this.loanAmount, required this.interestRate, required this.termMonths, required this.paymentType, required this.monthlyPayment, required this.totalPayment, required this.totalInterest, final  List<double> paymentSchedule = const [], required this.createdAt}): _paymentSchedule = paymentSchedule;
  factory _LoanCalculationModel.fromJson(Map<String, dynamic> json) => _$LoanCalculationModelFromJson(json);

@override final  String id;
@override final  double loanAmount;
@override final  double interestRate;
@override final  int termMonths;
@override final  PaymentType paymentType;
@override final  double monthlyPayment;
@override final  double totalPayment;
@override final  double totalInterest;
 final  List<double> _paymentSchedule;
@override@JsonKey() List<double> get paymentSchedule {
  if (_paymentSchedule is EqualUnmodifiableListView) return _paymentSchedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentSchedule);
}

@override final  DateTime createdAt;

/// Create a copy of LoanCalculationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoanCalculationModelCopyWith<_LoanCalculationModel> get copyWith => __$LoanCalculationModelCopyWithImpl<_LoanCalculationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoanCalculationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoanCalculationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.loanAmount, loanAmount) || other.loanAmount == loanAmount)&&(identical(other.interestRate, interestRate) || other.interestRate == interestRate)&&(identical(other.termMonths, termMonths) || other.termMonths == termMonths)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.monthlyPayment, monthlyPayment) || other.monthlyPayment == monthlyPayment)&&(identical(other.totalPayment, totalPayment) || other.totalPayment == totalPayment)&&(identical(other.totalInterest, totalInterest) || other.totalInterest == totalInterest)&&const DeepCollectionEquality().equals(other._paymentSchedule, _paymentSchedule)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,loanAmount,interestRate,termMonths,paymentType,monthlyPayment,totalPayment,totalInterest,const DeepCollectionEquality().hash(_paymentSchedule),createdAt);

@override
String toString() {
  return 'LoanCalculationModel(id: $id, loanAmount: $loanAmount, interestRate: $interestRate, termMonths: $termMonths, paymentType: $paymentType, monthlyPayment: $monthlyPayment, totalPayment: $totalPayment, totalInterest: $totalInterest, paymentSchedule: $paymentSchedule, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$LoanCalculationModelCopyWith<$Res> implements $LoanCalculationModelCopyWith<$Res> {
  factory _$LoanCalculationModelCopyWith(_LoanCalculationModel value, $Res Function(_LoanCalculationModel) _then) = __$LoanCalculationModelCopyWithImpl;
@override @useResult
$Res call({
 String id, double loanAmount, double interestRate, int termMonths, PaymentType paymentType, double monthlyPayment, double totalPayment, double totalInterest, List<double> paymentSchedule, DateTime createdAt
});




}
/// @nodoc
class __$LoanCalculationModelCopyWithImpl<$Res>
    implements _$LoanCalculationModelCopyWith<$Res> {
  __$LoanCalculationModelCopyWithImpl(this._self, this._then);

  final _LoanCalculationModel _self;
  final $Res Function(_LoanCalculationModel) _then;

/// Create a copy of LoanCalculationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? loanAmount = null,Object? interestRate = null,Object? termMonths = null,Object? paymentType = null,Object? monthlyPayment = null,Object? totalPayment = null,Object? totalInterest = null,Object? paymentSchedule = null,Object? createdAt = null,}) {
  return _then(_LoanCalculationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,loanAmount: null == loanAmount ? _self.loanAmount : loanAmount // ignore: cast_nullable_to_non_nullable
as double,interestRate: null == interestRate ? _self.interestRate : interestRate // ignore: cast_nullable_to_non_nullable
as double,termMonths: null == termMonths ? _self.termMonths : termMonths // ignore: cast_nullable_to_non_nullable
as int,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType,monthlyPayment: null == monthlyPayment ? _self.monthlyPayment : monthlyPayment // ignore: cast_nullable_to_non_nullable
as double,totalPayment: null == totalPayment ? _self.totalPayment : totalPayment // ignore: cast_nullable_to_non_nullable
as double,totalInterest: null == totalInterest ? _self.totalInterest : totalInterest // ignore: cast_nullable_to_non_nullable
as double,paymentSchedule: null == paymentSchedule ? _self._paymentSchedule : paymentSchedule // ignore: cast_nullable_to_non_nullable
as List<double>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
