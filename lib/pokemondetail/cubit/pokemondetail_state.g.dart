// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemondetail_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetailState _$PokemonDetailStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PokemonDetailState', json, ($checkedConvert) {
      final val = PokemonDetailState(
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$PokemonDetailStateXEnumMap, v),
        ),
        pokemon: $checkedConvert(
          'pokemon',
          (v) => v == null ? null : Pokemon.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PokemonDetailStateToJson(PokemonDetailState instance) =>
    <String, dynamic>{
      'status': _$PokemonDetailStateXEnumMap[instance.status]!,
      'pokemon': instance.pokemon,
    };

const _$PokemonDetailStateXEnumMap = {
  PokemonDetailStateX.intial: 'intial',
  PokemonDetailStateX.loading: 'loading',
  PokemonDetailStateX.success: 'success',
  PokemonDetailStateX.failure: 'failure',
};
