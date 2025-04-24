// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditItemState {

 bool get isLoading; bool get isUpdating; String? get errorLoading; String? get errorUpdating; ItemResponse? get item; List<ItemTypeResponse> get itemTypes; List<UnitResponse> get units; ItemTypeResponse? get selectedItemType; UnitResponse? get selectedUnit; String? get itemName; int? get minimumStock; File? get imageFile; String? get currentImageUrl;
/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditItemStateCopyWith<EditItemState> get copyWith => _$EditItemStateCopyWithImpl<EditItemState>(this as EditItemState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditItemState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating)&&(identical(other.errorLoading, errorLoading) || other.errorLoading == errorLoading)&&(identical(other.errorUpdating, errorUpdating) || other.errorUpdating == errorUpdating)&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other.itemTypes, itemTypes)&&const DeepCollectionEquality().equals(other.units, units)&&(identical(other.selectedItemType, selectedItemType) || other.selectedItemType == selectedItemType)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.currentImageUrl, currentImageUrl) || other.currentImageUrl == currentImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isUpdating,errorLoading,errorUpdating,item,const DeepCollectionEquality().hash(itemTypes),const DeepCollectionEquality().hash(units),selectedItemType,selectedUnit,itemName,minimumStock,imageFile,currentImageUrl);

@override
String toString() {
  return 'EditItemState(isLoading: $isLoading, isUpdating: $isUpdating, errorLoading: $errorLoading, errorUpdating: $errorUpdating, item: $item, itemTypes: $itemTypes, units: $units, selectedItemType: $selectedItemType, selectedUnit: $selectedUnit, itemName: $itemName, minimumStock: $minimumStock, imageFile: $imageFile, currentImageUrl: $currentImageUrl)';
}


}

/// @nodoc
abstract mixin class $EditItemStateCopyWith<$Res>  {
  factory $EditItemStateCopyWith(EditItemState value, $Res Function(EditItemState) _then) = _$EditItemStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isUpdating, String? errorLoading, String? errorUpdating, ItemResponse? item, List<ItemTypeResponse> itemTypes, List<UnitResponse> units, ItemTypeResponse? selectedItemType, UnitResponse? selectedUnit, String? itemName, int? minimumStock, File? imageFile, String? currentImageUrl
});


$ItemResponseCopyWith<$Res>? get item;$ItemTypeResponseCopyWith<$Res>? get selectedItemType;$UnitResponseCopyWith<$Res>? get selectedUnit;

}
/// @nodoc
class _$EditItemStateCopyWithImpl<$Res>
    implements $EditItemStateCopyWith<$Res> {
  _$EditItemStateCopyWithImpl(this._self, this._then);

  final EditItemState _self;
  final $Res Function(EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isUpdating = null,Object? errorLoading = freezed,Object? errorUpdating = freezed,Object? item = freezed,Object? itemTypes = null,Object? units = null,Object? selectedItemType = freezed,Object? selectedUnit = freezed,Object? itemName = freezed,Object? minimumStock = freezed,Object? imageFile = freezed,Object? currentImageUrl = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,errorLoading: freezed == errorLoading ? _self.errorLoading : errorLoading // ignore: cast_nullable_to_non_nullable
as String?,errorUpdating: freezed == errorUpdating ? _self.errorUpdating : errorUpdating // ignore: cast_nullable_to_non_nullable
as String?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemResponse?,itemTypes: null == itemTypes ? _self.itemTypes : itemTypes // ignore: cast_nullable_to_non_nullable
as List<ItemTypeResponse>,units: null == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as List<UnitResponse>,selectedItemType: freezed == selectedItemType ? _self.selectedItemType : selectedItemType // ignore: cast_nullable_to_non_nullable
as ItemTypeResponse?,selectedUnit: freezed == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as UnitResponse?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,minimumStock: freezed == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as File?,currentImageUrl: freezed == currentImageUrl ? _self.currentImageUrl : currentImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemResponseCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of EditItemState
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
}/// Create a copy of EditItemState
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


class _EditItemState implements EditItemState {
  const _EditItemState({this.isLoading = false, this.isUpdating = false, this.errorLoading, this.errorUpdating, this.item, final  List<ItemTypeResponse> itemTypes = const [], final  List<UnitResponse> units = const [], this.selectedItemType, this.selectedUnit, this.itemName, this.minimumStock, this.imageFile, this.currentImageUrl}): _itemTypes = itemTypes,_units = units;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isUpdating;
@override final  String? errorLoading;
@override final  String? errorUpdating;
@override final  ItemResponse? item;
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
@override final  String? itemName;
@override final  int? minimumStock;
@override final  File? imageFile;
@override final  String? currentImageUrl;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditItemStateCopyWith<_EditItemState> get copyWith => __$EditItemStateCopyWithImpl<_EditItemState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditItemState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating)&&(identical(other.errorLoading, errorLoading) || other.errorLoading == errorLoading)&&(identical(other.errorUpdating, errorUpdating) || other.errorUpdating == errorUpdating)&&(identical(other.item, item) || other.item == item)&&const DeepCollectionEquality().equals(other._itemTypes, _itemTypes)&&const DeepCollectionEquality().equals(other._units, _units)&&(identical(other.selectedItemType, selectedItemType) || other.selectedItemType == selectedItemType)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.minimumStock, minimumStock) || other.minimumStock == minimumStock)&&(identical(other.imageFile, imageFile) || other.imageFile == imageFile)&&(identical(other.currentImageUrl, currentImageUrl) || other.currentImageUrl == currentImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isUpdating,errorLoading,errorUpdating,item,const DeepCollectionEquality().hash(_itemTypes),const DeepCollectionEquality().hash(_units),selectedItemType,selectedUnit,itemName,minimumStock,imageFile,currentImageUrl);

@override
String toString() {
  return 'EditItemState(isLoading: $isLoading, isUpdating: $isUpdating, errorLoading: $errorLoading, errorUpdating: $errorUpdating, item: $item, itemTypes: $itemTypes, units: $units, selectedItemType: $selectedItemType, selectedUnit: $selectedUnit, itemName: $itemName, minimumStock: $minimumStock, imageFile: $imageFile, currentImageUrl: $currentImageUrl)';
}


}

/// @nodoc
abstract mixin class _$EditItemStateCopyWith<$Res> implements $EditItemStateCopyWith<$Res> {
  factory _$EditItemStateCopyWith(_EditItemState value, $Res Function(_EditItemState) _then) = __$EditItemStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isUpdating, String? errorLoading, String? errorUpdating, ItemResponse? item, List<ItemTypeResponse> itemTypes, List<UnitResponse> units, ItemTypeResponse? selectedItemType, UnitResponse? selectedUnit, String? itemName, int? minimumStock, File? imageFile, String? currentImageUrl
});


@override $ItemResponseCopyWith<$Res>? get item;@override $ItemTypeResponseCopyWith<$Res>? get selectedItemType;@override $UnitResponseCopyWith<$Res>? get selectedUnit;

}
/// @nodoc
class __$EditItemStateCopyWithImpl<$Res>
    implements _$EditItemStateCopyWith<$Res> {
  __$EditItemStateCopyWithImpl(this._self, this._then);

  final _EditItemState _self;
  final $Res Function(_EditItemState) _then;

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isUpdating = null,Object? errorLoading = freezed,Object? errorUpdating = freezed,Object? item = freezed,Object? itemTypes = null,Object? units = null,Object? selectedItemType = freezed,Object? selectedUnit = freezed,Object? itemName = freezed,Object? minimumStock = freezed,Object? imageFile = freezed,Object? currentImageUrl = freezed,}) {
  return _then(_EditItemState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,errorLoading: freezed == errorLoading ? _self.errorLoading : errorLoading // ignore: cast_nullable_to_non_nullable
as String?,errorUpdating: freezed == errorUpdating ? _self.errorUpdating : errorUpdating // ignore: cast_nullable_to_non_nullable
as String?,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as ItemResponse?,itemTypes: null == itemTypes ? _self._itemTypes : itemTypes // ignore: cast_nullable_to_non_nullable
as List<ItemTypeResponse>,units: null == units ? _self._units : units // ignore: cast_nullable_to_non_nullable
as List<UnitResponse>,selectedItemType: freezed == selectedItemType ? _self.selectedItemType : selectedItemType // ignore: cast_nullable_to_non_nullable
as ItemTypeResponse?,selectedUnit: freezed == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as UnitResponse?,itemName: freezed == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String?,minimumStock: freezed == minimumStock ? _self.minimumStock : minimumStock // ignore: cast_nullable_to_non_nullable
as int?,imageFile: freezed == imageFile ? _self.imageFile : imageFile // ignore: cast_nullable_to_non_nullable
as File?,currentImageUrl: freezed == currentImageUrl ? _self.currentImageUrl : currentImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EditItemState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemResponseCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $ItemResponseCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}/// Create a copy of EditItemState
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
}/// Create a copy of EditItemState
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
