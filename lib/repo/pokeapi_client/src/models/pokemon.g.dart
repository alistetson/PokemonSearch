// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamedApiResource _$NamedApiResourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('NamedApiResource', json, ($checkedConvert) {
      final val = NamedApiResource(
        name: $checkedConvert('name', (v) => v as String),
        url: $checkedConvert('url', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$NamedApiResourceToJson(NamedApiResource instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

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
      abilities: $checkedConvert(
        'abilities',
        (v) => (v as List<dynamic>)
            .map((e) => PokemonAbility.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      forms: $checkedConvert(
        'forms',
        (v) => (v as List<dynamic>)
            .map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      gameIndices: $checkedConvert(
        'game_indices',
        (v) => (v as List<dynamic>)
            .map((e) => VersionGameIndex.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      heldItems: $checkedConvert(
        'held_items',
        (v) => (v as List<dynamic>)
            .map((e) => PokemonHeldItem.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      locationAreaEncounters: $checkedConvert(
        'location_area_encounters',
        (v) => v as String,
      ),
      moves: $checkedConvert(
        'moves',
        (v) => (v as List<dynamic>)
            .map((e) => PokemonMove.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      species: $checkedConvert(
        'species',
        (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
      ),
      sprites: $checkedConvert(
        'sprites',
        (v) => PokemonSprites.fromJson(v as Map<String, dynamic>),
      ),
      cries: $checkedConvert(
        'cries',
        (v) => PokemonCries.fromJson(v as Map<String, dynamic>),
      ),
      stats: $checkedConvert(
        'stats',
        (v) => (v as List<dynamic>)
            .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      types: $checkedConvert(
        'types',
        (v) => (v as List<dynamic>)
            .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'baseExperience': 'base_experience',
    'isDefault': 'is_default',
    'gameIndices': 'game_indices',
    'heldItems': 'held_items',
    'locationAreaEncounters': 'location_area_encounters',
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
  'abilities': instance.abilities.map((e) => e.toJson()).toList(),
  'forms': instance.forms.map((e) => e.toJson()).toList(),
  'game_indices': instance.gameIndices.map((e) => e.toJson()).toList(),
  'held_items': instance.heldItems.map((e) => e.toJson()).toList(),
  'location_area_encounters': instance.locationAreaEncounters,
  'moves': instance.moves.map((e) => e.toJson()).toList(),
  'species': instance.species.toJson(),
  'sprites': instance.sprites.toJson(),
  'cries': instance.cries.toJson(),
  'stats': instance.stats.map((e) => e.toJson()).toList(),
  'types': instance.types.map((e) => e.toJson()).toList(),
};

PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PokemonAbility', json, ($checkedConvert) {
      final val = PokemonAbility(
        isHidden: $checkedConvert('is_hidden', (v) => v as bool),
        slot: $checkedConvert('slot', (v) => (v as num).toInt()),
        ability: $checkedConvert(
          'ability',
          (v) => v == null
              ? null
              : NamedApiResource.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'isHidden': 'is_hidden'});

Map<String, dynamic> _$PokemonAbilityToJson(PokemonAbility instance) =>
    <String, dynamic>{
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
      'ability': instance.ability?.toJson(),
    };

VersionGameIndex _$VersionGameIndexFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VersionGameIndex', json, ($checkedConvert) {
      final val = VersionGameIndex(
        gameIndex: $checkedConvert('game_index', (v) => (v as num).toInt()),
        version: $checkedConvert(
          'version',
          (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'gameIndex': 'game_index'});

Map<String, dynamic> _$VersionGameIndexToJson(VersionGameIndex instance) =>
    <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version.toJson(),
    };

PokemonHeldItem _$PokemonHeldItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PokemonHeldItem', json, ($checkedConvert) {
      final val = PokemonHeldItem(
        item: $checkedConvert(
          'item',
          (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
        ),
        versionDetails: $checkedConvert(
          'version_details',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    PokemonHeldItemVersion.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'versionDetails': 'version_details'});

Map<String, dynamic> _$PokemonHeldItemToJson(
  PokemonHeldItem instance,
) => <String, dynamic>{
  'item': instance.item.toJson(),
  'version_details': instance.versionDetails.map((e) => e.toJson()).toList(),
};

PokemonHeldItemVersion _$PokemonHeldItemVersionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PokemonHeldItemVersion', json, ($checkedConvert) {
  final val = PokemonHeldItemVersion(
    rarity: $checkedConvert('rarity', (v) => (v as num).toInt()),
    version: $checkedConvert(
      'version',
      (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$PokemonHeldItemVersionToJson(
  PokemonHeldItemVersion instance,
) => <String, dynamic>{
  'rarity': instance.rarity,
  'version': instance.version.toJson(),
};

PokemonMove _$PokemonMoveFromJson(Map<String, dynamic> json) => $checkedCreate(
  'PokemonMove',
  json,
  ($checkedConvert) {
    final val = PokemonMove(
      move: $checkedConvert(
        'move',
        (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
      ),
      versionGroupDetails: $checkedConvert(
        'version_group_details',
        (v) => (v as List<dynamic>)
            .map((e) => PokemonMoveVersion.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'versionGroupDetails': 'version_group_details'},
);

Map<String, dynamic> _$PokemonMoveToJson(PokemonMove instance) =>
    <String, dynamic>{
      'move': instance.move.toJson(),
      'version_group_details': instance.versionGroupDetails
          .map((e) => e.toJson())
          .toList(),
    };

PokemonMoveVersion _$PokemonMoveVersionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PokemonMoveVersion',
      json,
      ($checkedConvert) {
        final val = PokemonMoveVersion(
          levelLearnedAt: $checkedConvert(
            'level_learned_at',
            (v) => (v as num).toInt(),
          ),
          versionGroup: $checkedConvert(
            'version_group',
            (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
          ),
          moveLearnMethod: $checkedConvert(
            'move_learn_method',
            (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
          ),
          order: $checkedConvert('order', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'levelLearnedAt': 'level_learned_at',
        'versionGroup': 'version_group',
        'moveLearnMethod': 'move_learn_method',
      },
    );

Map<String, dynamic> _$PokemonMoveVersionToJson(PokemonMoveVersion instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'version_group': instance.versionGroup.toJson(),
      'move_learn_method': instance.moveLearnMethod.toJson(),
      'order': instance.order,
    };

PokemonStat _$PokemonStatFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PokemonStat', json, ($checkedConvert) {
      final val = PokemonStat(
        baseStat: $checkedConvert('base_stat', (v) => (v as num).toInt()),
        effort: $checkedConvert('effort', (v) => (v as num).toInt()),
        stat: $checkedConvert(
          'stat',
          (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'baseStat': 'base_stat'});

Map<String, dynamic> _$PokemonStatToJson(PokemonStat instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat.toJson(),
    };

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PokemonType', json, ($checkedConvert) {
      final val = PokemonType(
        slot: $checkedConvert('slot', (v) => (v as num).toInt()),
        type: $checkedConvert(
          'type',
          (v) => NamedApiResource.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PokemonTypeToJson(PokemonType instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type.toJson()};

PokemonCries _$PokemonCriesFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PokemonCries', json, ($checkedConvert) {
      final val = PokemonCries(
        latest: $checkedConvert('latest', (v) => v as String?),
        legacy: $checkedConvert('legacy', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$PokemonCriesToJson(PokemonCries instance) =>
    <String, dynamic>{'latest': instance.latest, 'legacy': instance.legacy};

PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PokemonSprites',
      json,
      ($checkedConvert) {
        final val = PokemonSprites(
          frontDefault: $checkedConvert('front_default', (v) => v as String?),
          frontShiny: $checkedConvert('front_shiny', (v) => v as String?),
          frontFemale: $checkedConvert('front_female', (v) => v as String?),
          frontShinyFemale: $checkedConvert(
            'front_shiny_female',
            (v) => v as String?,
          ),
          backDefault: $checkedConvert('back_default', (v) => v as String?),
          backShiny: $checkedConvert('back_shiny', (v) => v as String?),
          backFemale: $checkedConvert('back_female', (v) => v as String?),
          backShinyFemale: $checkedConvert(
            'back_shiny_female',
            (v) => v as String?,
          ),
          other: $checkedConvert('other', (v) => v as Map<String, dynamic>?),
          versions: $checkedConvert(
            'versions',
            (v) => v as Map<String, dynamic>?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'frontDefault': 'front_default',
        'frontShiny': 'front_shiny',
        'frontFemale': 'front_female',
        'frontShinyFemale': 'front_shiny_female',
        'backDefault': 'back_default',
        'backShiny': 'back_shiny',
        'backFemale': 'back_female',
        'backShinyFemale': 'back_shiny_female',
      },
    );

Map<String, dynamic> _$PokemonSpritesToJson(PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
      'front_female': instance.frontFemale,
      'front_shiny_female': instance.frontShinyFemale,
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'back_female': instance.backFemale,
      'back_shiny_female': instance.backShinyFemale,
      'other': instance.other,
      'versions': instance.versions,
    };
