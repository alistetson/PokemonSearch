// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemonlist_states.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonListState _$PokemonListStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PokemonListState', json, ($checkedConvert) {
      final val = PokemonListState(
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(_$PokemonListStatusEnumMap, v) ?? .intial,
        ),
        pokemons: $checkedConvert(
          'pokemons',
          (v) =>
              (v as List<dynamic>?)
                  ?.map(
                    (e) => NamedApiResource.fromJson(e as Map<String, dynamic>),
                  )
                  .toList() ??
              const [],
        ),
      );
      return val;
    });

Map<String, dynamic> _$PokemonListStateToJson(PokemonListState instance) =>
    <String, dynamic>{
      'status': _$PokemonListStatusEnumMap[instance.status]!,
      'pokemons': instance.pokemons,
    };

const _$PokemonListStatusEnumMap = {
  PokemonListStatus.intial: 'intial',
  PokemonListStatus.loading: 'loading',
  PokemonListStatus.success: 'success',
  PokemonListStatus.failure: 'failure',
};
