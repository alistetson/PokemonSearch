// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Pokemon',
  json,
  ($checkedConvert) {
    final val = Pokemon(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      baseExperience: $checkedConvert(
        'base_experience',
        (v) => (v as num).toInt(),
      ),
      height: $checkedConvert('height', (v) => (v as num).toInt()),
      isDefault: $checkedConvert('is_default', (v) => v as bool),
      order: $checkedConvert('order', (v) => (v as num).toInt()),
      weight: $checkedConvert('weight', (v) => (v as num).toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'baseExperience': 'base_experience',
    'isDefault': 'is_default',
  },
);

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'base_experience': instance.baseExperience,
  'height': instance.height,
  'is_default': instance.isDefault,
  'order': instance.order,
  'weight': instance.weight,
};
