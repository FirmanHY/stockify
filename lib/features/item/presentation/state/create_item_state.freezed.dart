// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateItemState {

 List<ItemTypeResponse> get itemTypes; List<UnitResponse> get units; ItemTypeResponse? get selectedItemType; UnitResponse? get selectedUnit; String get itemName; int get minimumStock; File? get imageFile; bool get isLoading; bool get isCreating; String? get errorGettingUnit; String? get errorGettingTypes; String? get errorCreating;
/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateItemStateCopyWith<CreateItemState> get copyWith => _$CreateItemStateCopyWithImpl<CreateItemState>(this as CreateItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateItemState&&const DeepCollectionEquality().equals(other.itemTypes, itemTypes)&&const DeepCollectionEquality().equals(other.units, units)&&(identical(other.selectedItemType, selectedItemType) || other.selectedItemType == selectedItemType)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCreating, isCreating) || other.isCreating == isCreating)&&(identical(other.errorGettingUnit, errorGettingUnit) || other.errorGettingUnit == errorGettingUnit)&&(identical(other.errorGettingTypes, errorGettingTypes) || other.errorGettingTypes == errorGettingTypes)&&(identical(other.errorCreating, errorCreating) || other.errorCreating == errorCreating));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(itemTypes),const DeepCollectionEquality().hash(units),selectedItemType,selectedUnit,itemName,minimumStock,imageFile,isLoading,isCreating,errorGettingUnit,errorGettingTypes,errorCreating);

@override
String toString() {
  return 'CreateItemState(itemTypes: $itemTypes, units: $units, selectedItemType: $selectedItemType, selectedUnit: $selectedUnit, itemName: $itemName, minimumStock: $minimumStock, imageFile: $imageFile, isLoading: $isLoading, isCreating: $isCreating, errorGettingUnit: $errorGettingUnit, errorGettingTypes: $errorGettingTypes, errorCreating: $errorCreating)';
}


}

/// @nodoc
abstract mixin class $CreateItemStateCopyWith<$Res>  {
  factory $CreateItemStateCopyWith(CreateItemState value, $Res Function(CreateItemState) _then) = _$CreateItemStateCopyWithImpl;
@useResult
$Res call({
 List<ItemTypeResponse> itemTypes, List<UnitResponse> units, ItemTypeResponse? selectedItemType, UnitResponse? selectedUnit, String itemName, int minimumStock, File? imageFile, bool isLoading, bool isCreating, String? errorGettingUnit, String? errorGettingTypes, String? errorCreating
});


$ItemTypeResponseCopyWith<$Res>? get selectedItemType;$UnitResponseCopyWith<$Res>? get selectedUnit;

}
/// @nodoc
class _$CreateItemStateCopyWithImpl<$Res>
    implements $CreateItemStateCopyWith<$Res> {
  _$CreateItemStateCopyWithImpl(this._self, this._then);

  final CreateItemState _self;
  final $Res Function(CreateItemState) _then;

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemTypes = null,Object? units = null,Object? selectedItemType = freezed,Object? selectedUnit = freezed,Object? itemName = null,Object? minimumStock = null,Object? imageFile = freezed,Object? isLoading = null,Object? isCreating = null,Object? errorGettingUnit = freezed,Object? errorGettingTypes = freezed,Object? errorCreating = freezed,}) {
  return _then(_self.copyWith(
itemTypes: null == itemTypes ? _self.itemTypes : itemTypes // ignore: cast_nullable_to_non_nullable
as List<ItemTypeResponse>,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as List<UnitResponse>,selectedItemType: freezed == selectedItemType ? _self.selectedItemType : selectedItemType // ignore: cast_nullable_to_non_nullable
as ItemTypeResponse?,selectedUnit: freezed == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as UnitResponse?,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,minimumStock: null == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as File?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCreating: null == isCreating ? _self.isCreating : isCreating // ignore: cast_nullable_to_non_nullable
as bool,errorGettingUnit: freezed == errorGettingUnit ? _self.errorGettingUnit : errorGettingUnit // ignore: cast_nullable_to_non_nullable
as String?,errorGettingTypes: freezed == errorGettingTypes ? _self.errorGettingTypes : errorGettingTypes // ignore: cast_nullable_to_non_nullable
as String?,errorCreating: freezed == errorCreating ? _self.errorCreating : errorCreating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemTypeResponseCopyWith<$Res>? get selectedItemType {
    if (_self.selectedItemType == null) {
    return null;
  }

  return $ItemTypeResponseCopyWith<$Res>(_self.selectedItemType!, (value) {
    return _then(_self.copyWith(selectedItemType: value));
  });
}/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnitResponseCopyWith<$Res>? get selectedUnit {
    if (_self.selectedUnit == null) {
    return null;
  }

  return $UnitResponseCopyWith<$Res>(_self.selectedUnit!, (value) {
    return _then(_self.copyWith(selectedUnit: value));
  });
}
}


/// @nodoc


class _CreateItemState implements CreateItemState {
  const _CreateItemState({final  List<ItemTypeResponse> itemTypes = const [], final  List<UnitResponse> units = const [], this.selectedItemType, this.selectedUnit, this.itemName = '', this.minimumStock = 0, this.imageFile, this.isLoading = false, this.isCreating = false, this.errorGettingUnit, this.errorGettingTypes, this.errorCreating}): _itemTypes = itemTypes,_units = units;
  

 final  List<ItemTypeResponse> _itemTypes;
@override@JsonKey() List<ItemTypeResponse> get itemTypes {
  if (_itemTypes is EqualUnmodifiableListView) return _itemTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_itemTypes);
}

 final  List<UnitResponse> _units;
@override@JsonKey() List<UnitResponse> get units {
  if (_units is EqualUnmodifiableListView) return _units;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_units);
}

@override final  ItemTypeResponse? selectedItemType;
@override final  UnitResponse? selectedUnit;
@override@JsonKey() final  String itemName;
@override@JsonKey() final  int minimumStock;
@override final  File? imageFile;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isCreating;
@override final  String? errorGettingUnit;
@override final  String? errorGettingTypes;
@override final  String? errorCreating;

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateItemStateCopyWith<_CreateItemState> get copyWith => __$CreateItemStateCopyWithImpl<_CreateItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateItemState&&const DeepCollectionEquality().equals(other._itemTypes, _itemTypes)&&const DeepCollectionEquality().equals(other._units, _units)&&(identical(other.selectedItemType, selectedItemType) || other.selectedItemType == selectedItemType)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isCreating, isCreating) || other.isCreating == isCreating)&&(identical(other.errorGettingUnit, errorGettingUnit) || other.errorGettingUnit == errorGettingUnit)&&(identical(other.errorGettingTypes, errorGettingTypes) || other.errorGettingTypes == errorGettingTypes)&&(identical(other.errorCreating, errorCreating) || other.errorCreating == errorCreating));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_itemTypes),const DeepCollectionEquality().hash(_units),selectedItemType,selectedUnit,itemName,minimumStock,imageFile,isLoading,isCreating,errorGettingUnit,errorGettingTypes,errorCreating);

@override
String toString() {
  return 'CreateItemState(itemTypes: $itemTypes, units: $units, selectedItemType: $selectedItemType, selectedUnit: $selectedUnit, itemName: $itemName, minimumStock: $minimumStock, imageFile: $imageFile, isLoading: $isLoading, isCreating: $isCreating, errorGettingUnit: $errorGettingUnit, errorGettingTypes: $errorGettingTypes, errorCreating: $errorCreating)';
}


}

/// @nodoc
abstract mixin class _$CreateItemStateCopyWith<$Res> implements $CreateItemStateCopyWith<$Res> {
  factory _$CreateItemStateCopyWith(_CreateItemState value, $Res Function(_CreateItemState) _then) = __$CreateItemStateCopyWithImpl;
@override @useResult
$Res call({
 List<ItemTypeResponse> itemTypes, List<UnitResponse> units, ItemTypeResponse? selectedItemType, UnitResponse? selectedUnit, String itemName, int minimumStock, File? imageFile, bool isLoading, bool isCreating, String? errorGettingUnit, String? errorGettingTypes, String? errorCreating
});


@override $ItemTypeResponseCopyWith<$Res>? get selectedItemType;@override $UnitResponseCopyWith<$Res>? get selectedUnit;

}
/// @nodoc
class __$CreateItemStateCopyWithImpl<$Res>
    implements _$CreateItemStateCopyWith<$Res> {
  __$CreateItemStateCopyWithImpl(this._self, this._then);

  final _CreateItemState _self;
  final $Res Function(_CreateItemState) _then;

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemTypes = null,Object? units = null,Object? selectedItemType = freezed,Object? selectedUnit = freezed,Object? itemName = null,Object? minimumStock = null,Object? imageFile = freezed,Object? isLoading = null,Object? isCreating = null,Object? errorGettingUnit = freezed,Object? errorGettingTypes = freezed,Object? errorCreating = freezed,}) {
  return _then(_CreateItemState(
itemTypes: null == itemTypes ? _self._itemTypes : itemTypes // ignore: cast_nullable_to_non_nullable
as List<ItemTypeResponse>,units: null == units ? _self._units : units // ignore: cast_nullable_to_non_nullable
as List<UnitResponse>,selectedItemType: freezed == selectedItemType ? _self.selectedItemType : selectedItemType // ignore: cast_nullable_to_non_nullable
as ItemTypeResponse?,selectedUnit: freezed == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as UnitResponse?,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,minimumStock: null == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as File?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isCreating: null == isCreating ? _self.isCreating : isCreating // ignore: cast_nullable_to_non_nullable
as bool,errorGettingUnit: freezed == errorGettingUnit ? _self.errorGettingUnit : errorGettingUnit // ignore: cast_nullable_to_non_nullable
as String?,errorGettingTypes: freezed == errorGettingTypes ? _self.errorGettingTypes : errorGettingTypes // ignore: cast_nullable_to_non_nullable
as String?,errorCreating: freezed == errorCreating ? _self.errorCreating : errorCreating // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemTypeResponseCopyWith<$Res>? get selectedItemType {
    if (_self.selectedItemType == null) {
    return null;
  }

  return $ItemTypeResponseCopyWith<$Res>(_self.selectedItemType!, (value) {
    return _then(_self.copyWith(selectedItemType: value));
  });
}/// Create a copy of CreateItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UnitResponseCopyWith<$Res>? get selectedUnit {
    if (_self.selectedUnit == null) {
    return null;
  }

  return $UnitResponseCopyWith<$Res>(_self.selectedUnit!, (value) {
    return _then(_self.copyWith(selectedUnit: value));
  });
}
}

// dart format on
