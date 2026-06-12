// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoanState {

 Status? get calculateStatus; Status? get saveStatus; Status? get deleteStatus; Status? get historyStatus; LoanCalculationModel? get currentCalculation; List<LoanCalculationModel> get history;
/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoanStateCopyWith<LoanState> get copyWith => _$LoanStateCopyWithImpl<LoanState>(this as LoanState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoanState&&(identical(other.calculateStatus, calculateStatus) || other.calculateStatus == calculateStatus)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&(identical(other.deleteStatus, deleteStatus) || other.deleteStatus == deleteStatus)&&(identical(other.historyStatus, historyStatus) || other.historyStatus == historyStatus)&&(identical(other.currentCalculation, currentCalculation) || other.currentCalculation == currentCalculation)&&const DeepCollectionEquality().equals(other.history, history));
}


@override
int get hashCode => Object.hash(runtimeType,calculateStatus,saveStatus,deleteStatus,historyStatus,currentCalculation,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'LoanState(calculateStatus: $calculateStatus, saveStatus: $saveStatus, deleteStatus: $deleteStatus, historyStatus: $historyStatus, currentCalculation: $currentCalculation, history: $history)';
}


}

/// @nodoc
abstract mixin class $LoanStateCopyWith<$Res>  {
  factory $LoanStateCopyWith(LoanState value, $Res Function(LoanState) _then) = _$LoanStateCopyWithImpl;
@useResult
$Res call({
 Status? calculateStatus, Status? saveStatus, Status? deleteStatus, Status? historyStatus, LoanCalculationModel? currentCalculation, List<LoanCalculationModel> history
});


$StatusCopyWith<$Res>? get calculateStatus;$StatusCopyWith<$Res>? get saveStatus;$StatusCopyWith<$Res>? get deleteStatus;$StatusCopyWith<$Res>? get historyStatus;$LoanCalculationModelCopyWith<$Res>? get currentCalculation;

}
/// @nodoc
class _$LoanStateCopyWithImpl<$Res>
    implements $LoanStateCopyWith<$Res> {
  _$LoanStateCopyWithImpl(this._self, this._then);

  final LoanState _self;
  final $Res Function(LoanState) _then;

/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? calculateStatus = freezed,Object? saveStatus = freezed,Object? deleteStatus = freezed,Object? historyStatus = freezed,Object? currentCalculation = freezed,Object? history = null,}) {
  return _then(_self.copyWith(
calculateStatus: freezed == calculateStatus ? _self.calculateStatus : calculateStatus // ignore: cast_nullable_to_non_nullable
as Status?,saveStatus: freezed == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as Status?,deleteStatus: freezed == deleteStatus ? _self.deleteStatus : deleteStatus // ignore: cast_nullable_to_non_nullable
as Status?,historyStatus: freezed == historyStatus ? _self.historyStatus : historyStatus // ignore: cast_nullable_to_non_nullable
as Status?,currentCalculation: freezed == currentCalculation ? _self.currentCalculation : currentCalculation // ignore: cast_nullable_to_non_nullable
as LoanCalculationModel?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<LoanCalculationModel>,
  ));
}
/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get calculateStatus {
    if (_self.calculateStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.calculateStatus!, (value) {
    return _then(_self.copyWith(calculateStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get saveStatus {
    if (_self.saveStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.saveStatus!, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get deleteStatus {
    if (_self.deleteStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.deleteStatus!, (value) {
    return _then(_self.copyWith(deleteStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get historyStatus {
    if (_self.historyStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.historyStatus!, (value) {
    return _then(_self.copyWith(historyStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoanCalculationModelCopyWith<$Res>? get currentCalculation {
    if (_self.currentCalculation == null) {
    return null;
  }

  return $LoanCalculationModelCopyWith<$Res>(_self.currentCalculation!, (value) {
    return _then(_self.copyWith(currentCalculation: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoanState].
extension LoanStatePatterns on LoanState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoanState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoanState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoanState value)  $default,){
final _that = this;
switch (_that) {
case _LoanState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoanState value)?  $default,){
final _that = this;
switch (_that) {
case _LoanState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status? calculateStatus,  Status? saveStatus,  Status? deleteStatus,  Status? historyStatus,  LoanCalculationModel? currentCalculation,  List<LoanCalculationModel> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoanState() when $default != null:
return $default(_that.calculateStatus,_that.saveStatus,_that.deleteStatus,_that.historyStatus,_that.currentCalculation,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status? calculateStatus,  Status? saveStatus,  Status? deleteStatus,  Status? historyStatus,  LoanCalculationModel? currentCalculation,  List<LoanCalculationModel> history)  $default,) {final _that = this;
switch (_that) {
case _LoanState():
return $default(_that.calculateStatus,_that.saveStatus,_that.deleteStatus,_that.historyStatus,_that.currentCalculation,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status? calculateStatus,  Status? saveStatus,  Status? deleteStatus,  Status? historyStatus,  LoanCalculationModel? currentCalculation,  List<LoanCalculationModel> history)?  $default,) {final _that = this;
switch (_that) {
case _LoanState() when $default != null:
return $default(_that.calculateStatus,_that.saveStatus,_that.deleteStatus,_that.historyStatus,_that.currentCalculation,_that.history);case _:
  return null;

}
}

}

/// @nodoc


class _LoanState implements LoanState {
  const _LoanState({this.calculateStatus, this.saveStatus, this.deleteStatus, this.historyStatus, this.currentCalculation, final  List<LoanCalculationModel> history = const []}): _history = history;
  

@override final  Status? calculateStatus;
@override final  Status? saveStatus;
@override final  Status? deleteStatus;
@override final  Status? historyStatus;
@override final  LoanCalculationModel? currentCalculation;
 final  List<LoanCalculationModel> _history;
@override@JsonKey() List<LoanCalculationModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoanStateCopyWith<_LoanState> get copyWith => __$LoanStateCopyWithImpl<_LoanState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoanState&&(identical(other.calculateStatus, calculateStatus) || other.calculateStatus == calculateStatus)&&(identical(other.saveStatus, saveStatus) || other.saveStatus == saveStatus)&&(identical(other.deleteStatus, deleteStatus) || other.deleteStatus == deleteStatus)&&(identical(other.historyStatus, historyStatus) || other.historyStatus == historyStatus)&&(identical(other.currentCalculation, currentCalculation) || other.currentCalculation == currentCalculation)&&const DeepCollectionEquality().equals(other._history, _history));
}


@override
int get hashCode => Object.hash(runtimeType,calculateStatus,saveStatus,deleteStatus,historyStatus,currentCalculation,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'LoanState(calculateStatus: $calculateStatus, saveStatus: $saveStatus, deleteStatus: $deleteStatus, historyStatus: $historyStatus, currentCalculation: $currentCalculation, history: $history)';
}


}

/// @nodoc
abstract mixin class _$LoanStateCopyWith<$Res> implements $LoanStateCopyWith<$Res> {
  factory _$LoanStateCopyWith(_LoanState value, $Res Function(_LoanState) _then) = __$LoanStateCopyWithImpl;
@override @useResult
$Res call({
 Status? calculateStatus, Status? saveStatus, Status? deleteStatus, Status? historyStatus, LoanCalculationModel? currentCalculation, List<LoanCalculationModel> history
});


@override $StatusCopyWith<$Res>? get calculateStatus;@override $StatusCopyWith<$Res>? get saveStatus;@override $StatusCopyWith<$Res>? get deleteStatus;@override $StatusCopyWith<$Res>? get historyStatus;@override $LoanCalculationModelCopyWith<$Res>? get currentCalculation;

}
/// @nodoc
class __$LoanStateCopyWithImpl<$Res>
    implements _$LoanStateCopyWith<$Res> {
  __$LoanStateCopyWithImpl(this._self, this._then);

  final _LoanState _self;
  final $Res Function(_LoanState) _then;

/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? calculateStatus = freezed,Object? saveStatus = freezed,Object? deleteStatus = freezed,Object? historyStatus = freezed,Object? currentCalculation = freezed,Object? history = null,}) {
  return _then(_LoanState(
calculateStatus: freezed == calculateStatus ? _self.calculateStatus : calculateStatus // ignore: cast_nullable_to_non_nullable
as Status?,saveStatus: freezed == saveStatus ? _self.saveStatus : saveStatus // ignore: cast_nullable_to_non_nullable
as Status?,deleteStatus: freezed == deleteStatus ? _self.deleteStatus : deleteStatus // ignore: cast_nullable_to_non_nullable
as Status?,historyStatus: freezed == historyStatus ? _self.historyStatus : historyStatus // ignore: cast_nullable_to_non_nullable
as Status?,currentCalculation: freezed == currentCalculation ? _self.currentCalculation : currentCalculation // ignore: cast_nullable_to_non_nullable
as LoanCalculationModel?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<LoanCalculationModel>,
  ));
}

/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get calculateStatus {
    if (_self.calculateStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.calculateStatus!, (value) {
    return _then(_self.copyWith(calculateStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get saveStatus {
    if (_self.saveStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.saveStatus!, (value) {
    return _then(_self.copyWith(saveStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get deleteStatus {
    if (_self.deleteStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.deleteStatus!, (value) {
    return _then(_self.copyWith(deleteStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatusCopyWith<$Res>? get historyStatus {
    if (_self.historyStatus == null) {
    return null;
  }

  return $StatusCopyWith<$Res>(_self.historyStatus!, (value) {
    return _then(_self.copyWith(historyStatus: value));
  });
}/// Create a copy of LoanState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoanCalculationModelCopyWith<$Res>? get currentCalculation {
    if (_self.currentCalculation == null) {
    return null;
  }

  return $LoanCalculationModelCopyWith<$Res>(_self.currentCalculation!, (value) {
    return _then(_self.copyWith(currentCalculation: value));
  });
}
}

// dart format on
