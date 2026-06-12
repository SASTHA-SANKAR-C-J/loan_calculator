// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoanEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoanEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoanEvent()';
}


}

/// @nodoc
class $LoanEventCopyWith<$Res>  {
$LoanEventCopyWith(LoanEvent _, $Res Function(LoanEvent) __);
}


/// Adds pattern-matching-related methods to [LoanEvent].
extension LoanEventPatterns on LoanEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CalculateLoan value)?  calculate,TResult Function( SaveCalculation value)?  saveCalculation,TResult Function( LoadHistory value)?  loadHistory,TResult Function( DeleteCalculation value)?  deleteCalculation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CalculateLoan() when calculate != null:
return calculate(_that);case SaveCalculation() when saveCalculation != null:
return saveCalculation(_that);case LoadHistory() when loadHistory != null:
return loadHistory(_that);case DeleteCalculation() when deleteCalculation != null:
return deleteCalculation(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CalculateLoan value)  calculate,required TResult Function( SaveCalculation value)  saveCalculation,required TResult Function( LoadHistory value)  loadHistory,required TResult Function( DeleteCalculation value)  deleteCalculation,}){
final _that = this;
switch (_that) {
case CalculateLoan():
return calculate(_that);case SaveCalculation():
return saveCalculation(_that);case LoadHistory():
return loadHistory(_that);case DeleteCalculation():
return deleteCalculation(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CalculateLoan value)?  calculate,TResult? Function( SaveCalculation value)?  saveCalculation,TResult? Function( LoadHistory value)?  loadHistory,TResult? Function( DeleteCalculation value)?  deleteCalculation,}){
final _that = this;
switch (_that) {
case CalculateLoan() when calculate != null:
return calculate(_that);case SaveCalculation() when saveCalculation != null:
return saveCalculation(_that);case LoadHistory() when loadHistory != null:
return loadHistory(_that);case DeleteCalculation() when deleteCalculation != null:
return deleteCalculation(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double loanAmount,  double interestRate,  int termMonths,  PaymentType paymentType)?  calculate,TResult Function( LoanCalculationModel calculation)?  saveCalculation,TResult Function()?  loadHistory,TResult Function( String id)?  deleteCalculation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CalculateLoan() when calculate != null:
return calculate(_that.loanAmount,_that.interestRate,_that.termMonths,_that.paymentType);case SaveCalculation() when saveCalculation != null:
return saveCalculation(_that.calculation);case LoadHistory() when loadHistory != null:
return loadHistory();case DeleteCalculation() when deleteCalculation != null:
return deleteCalculation(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double loanAmount,  double interestRate,  int termMonths,  PaymentType paymentType)  calculate,required TResult Function( LoanCalculationModel calculation)  saveCalculation,required TResult Function()  loadHistory,required TResult Function( String id)  deleteCalculation,}) {final _that = this;
switch (_that) {
case CalculateLoan():
return calculate(_that.loanAmount,_that.interestRate,_that.termMonths,_that.paymentType);case SaveCalculation():
return saveCalculation(_that.calculation);case LoadHistory():
return loadHistory();case DeleteCalculation():
return deleteCalculation(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double loanAmount,  double interestRate,  int termMonths,  PaymentType paymentType)?  calculate,TResult? Function( LoanCalculationModel calculation)?  saveCalculation,TResult? Function()?  loadHistory,TResult? Function( String id)?  deleteCalculation,}) {final _that = this;
switch (_that) {
case CalculateLoan() when calculate != null:
return calculate(_that.loanAmount,_that.interestRate,_that.termMonths,_that.paymentType);case SaveCalculation() when saveCalculation != null:
return saveCalculation(_that.calculation);case LoadHistory() when loadHistory != null:
return loadHistory();case DeleteCalculation() when deleteCalculation != null:
return deleteCalculation(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class CalculateLoan implements LoanEvent {
  const CalculateLoan({required this.loanAmount, required this.interestRate, required this.termMonths, required this.paymentType});
  

 final  double loanAmount;
 final  double interestRate;
 final  int termMonths;
 final  PaymentType paymentType;

/// Create a copy of LoanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalculateLoanCopyWith<CalculateLoan> get copyWith => _$CalculateLoanCopyWithImpl<CalculateLoan>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalculateLoan&&(identical(other.loanAmount, loanAmount) || other.loanAmount == loanAmount)&&(identical(other.interestRate, interestRate) || other.interestRate == interestRate)&&(identical(other.termMonths, termMonths) || other.termMonths == termMonths)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}


@override
int get hashCode => Object.hash(runtimeType,loanAmount,interestRate,termMonths,paymentType);

@override
String toString() {
  return 'LoanEvent.calculate(loanAmount: $loanAmount, interestRate: $interestRate, termMonths: $termMonths, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class $CalculateLoanCopyWith<$Res> implements $LoanEventCopyWith<$Res> {
  factory $CalculateLoanCopyWith(CalculateLoan value, $Res Function(CalculateLoan) _then) = _$CalculateLoanCopyWithImpl;
@useResult
$Res call({
 double loanAmount, double interestRate, int termMonths, PaymentType paymentType
});




}
/// @nodoc
class _$CalculateLoanCopyWithImpl<$Res>
    implements $CalculateLoanCopyWith<$Res> {
  _$CalculateLoanCopyWithImpl(this._self, this._then);

  final CalculateLoan _self;
  final $Res Function(CalculateLoan) _then;

/// Create a copy of LoanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loanAmount = null,Object? interestRate = null,Object? termMonths = null,Object? paymentType = null,}) {
  return _then(CalculateLoan(
loanAmount: null == loanAmount ? _self.loanAmount : loanAmount // ignore: cast_nullable_to_non_nullable
as double,interestRate: null == interestRate ? _self.interestRate : interestRate // ignore: cast_nullable_to_non_nullable
as double,termMonths: null == termMonths ? _self.termMonths : termMonths // ignore: cast_nullable_to_non_nullable
as int,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as PaymentType,
  ));
}


}

/// @nodoc


class SaveCalculation implements LoanEvent {
  const SaveCalculation({required this.calculation});
  

 final  LoanCalculationModel calculation;

/// Create a copy of LoanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaveCalculationCopyWith<SaveCalculation> get copyWith => _$SaveCalculationCopyWithImpl<SaveCalculation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCalculation&&(identical(other.calculation, calculation) || other.calculation == calculation));
}


@override
int get hashCode => Object.hash(runtimeType,calculation);

@override
String toString() {
  return 'LoanEvent.saveCalculation(calculation: $calculation)';
}


}

/// @nodoc
abstract mixin class $SaveCalculationCopyWith<$Res> implements $LoanEventCopyWith<$Res> {
  factory $SaveCalculationCopyWith(SaveCalculation value, $Res Function(SaveCalculation) _then) = _$SaveCalculationCopyWithImpl;
@useResult
$Res call({
 LoanCalculationModel calculation
});


$LoanCalculationModelCopyWith<$Res> get calculation;

}
/// @nodoc
class _$SaveCalculationCopyWithImpl<$Res>
    implements $SaveCalculationCopyWith<$Res> {
  _$SaveCalculationCopyWithImpl(this._self, this._then);

  final SaveCalculation _self;
  final $Res Function(SaveCalculation) _then;

/// Create a copy of LoanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? calculation = null,}) {
  return _then(SaveCalculation(
calculation: null == calculation ? _self.calculation : calculation // ignore: cast_nullable_to_non_nullable
as LoanCalculationModel,
  ));
}

/// Create a copy of LoanEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoanCalculationModelCopyWith<$Res> get calculation {
  
  return $LoanCalculationModelCopyWith<$Res>(_self.calculation, (value) {
    return _then(_self.copyWith(calculation: value));
  });
}
}

/// @nodoc


class LoadHistory implements LoanEvent {
  const LoadHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoanEvent.loadHistory()';
}


}




/// @nodoc


class DeleteCalculation implements LoanEvent {
  const DeleteCalculation(this.id);
  

 final  String id;

/// Create a copy of LoanEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCalculationCopyWith<DeleteCalculation> get copyWith => _$DeleteCalculationCopyWithImpl<DeleteCalculation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCalculation&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'LoanEvent.deleteCalculation(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteCalculationCopyWith<$Res> implements $LoanEventCopyWith<$Res> {
  factory $DeleteCalculationCopyWith(DeleteCalculation value, $Res Function(DeleteCalculation) _then) = _$DeleteCalculationCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteCalculationCopyWithImpl<$Res>
    implements $DeleteCalculationCopyWith<$Res> {
  _$DeleteCalculationCopyWithImpl(this._self, this._then);

  final DeleteCalculation _self;
  final $Res Function(DeleteCalculation) _then;

/// Create a copy of LoanEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteCalculation(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
