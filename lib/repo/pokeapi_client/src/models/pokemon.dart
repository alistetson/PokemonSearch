import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

/// Reusable `{ "name": ..., "url": ... }` reference used all over PokeAPI.
@JsonSerializable()
class NamedApiResource extends Equatable { 
  const NamedApiResource({required this.name, required this.url});

  final String name;
  final String url;

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);
  Map<String, dynamic> toJson() => _$NamedApiResourceToJson(this);

  @override
  List<Object?> get props => [name, url];
}

@JsonSerializable(explicitToJson: true)
class Pokemon extends Equatable {
  const Pokemon({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
    required this.abilities,
    required this.forms,
    required this.gameIndices,
    required this.heldItems,
    required this.locationAreaEncounters,
    required this.moves,
    required this.species,
    required this.sprites,
    required this.cries,
    required this.stats,
    required this.types,
  });

  final int id;
  final String name;
  @JsonKey(name: 'base_experience')
  final int baseExperience;
  final int height;
  @JsonKey(name: 'is_default')
  final bool isDefault;
  final int order;
  final int weight;
  final List<PokemonAbility> abilities;
  final List<NamedApiResource> forms;
  @JsonKey(name: 'game_indices')
  final List<VersionGameIndex> gameIndices;
  @JsonKey(name: 'held_items')
  final List<PokemonHeldItem> heldItems;
  @JsonKey(name: 'location_area_encounters')
  final String locationAreaEncounters;
  final List<PokemonMove> moves;
  final NamedApiResource species;
  final PokemonSprites sprites;
  final PokemonCries cries;
  final List<PokemonStat> stats;
  final List<PokemonType> types;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        baseExperience,
        height,
        isDefault,
        order,
        weight,
        abilities,
        forms,
        gameIndices,
        heldItems,
        locationAreaEncounters,
        moves,
        species,
        sprites,
        cries,
        stats,
        types,
      ];
}

@JsonSerializable(explicitToJson: true)
class PokemonAbility extends Equatable {
  const PokemonAbility({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  final int slot;

  /// Nullable: `past_abilities` entries can carry a null ability.
  final NamedApiResource? ability;

  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonAbilityToJson(this);

  @override
  List<Object?> get props => [isHidden, slot, ability];
}

@JsonSerializable(explicitToJson: true)
class VersionGameIndex extends Equatable {
  const VersionGameIndex({required this.gameIndex, required this.version});

  @JsonKey(name: 'game_index')
  final int gameIndex;
  final NamedApiResource version;

  factory VersionGameIndex.fromJson(Map<String, dynamic> json) =>
      _$VersionGameIndexFromJson(json);
  Map<String, dynamic> toJson() => _$VersionGameIndexToJson(this);

  @override
  List<Object?> get props => [gameIndex, version];
}

@JsonSerializable(explicitToJson: true)
class PokemonHeldItem extends Equatable {
  const PokemonHeldItem({required this.item, required this.versionDetails});

  final NamedApiResource item;
  @JsonKey(name: 'version_details')
  final List<PokemonHeldItemVersion> versionDetails;

  factory PokemonHeldItem.fromJson(Map<String, dynamic> json) =>
      _$PokemonHeldItemFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonHeldItemToJson(this);

  @override
  List<Object?> get props => [item, versionDetails];
}

@JsonSerializable(explicitToJson: true)
class PokemonHeldItemVersion extends Equatable {
  const PokemonHeldItemVersion({required this.rarity, required this.version});

  final int rarity;
  final NamedApiResource version;

  factory PokemonHeldItemVersion.fromJson(Map<String, dynamic> json) =>
      _$PokemonHeldItemVersionFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonHeldItemVersionToJson(this);

  @override
  List<Object?> get props => [rarity, version];
}

@JsonSerializable(explicitToJson: true)
class PokemonMove extends Equatable {
  const PokemonMove({required this.move, required this.versionGroupDetails});

  final NamedApiResource move;
  @JsonKey(name: 'version_group_details')
  final List<PokemonMoveVersion> versionGroupDetails;

  factory PokemonMove.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonMoveToJson(this);

  @override
  List<Object?> get props => [move, versionGroupDetails];
}

@JsonSerializable(explicitToJson: true)
class PokemonMoveVersion extends Equatable {
  const PokemonMoveVersion({
    required this.levelLearnedAt,
    required this.versionGroup,
    required this.moveLearnMethod,
    this.order,
  });

  @JsonKey(name: 'level_learned_at')
  final int levelLearnedAt;
  @JsonKey(name: 'version_group')
  final NamedApiResource versionGroup;
  @JsonKey(name: 'move_learn_method')
  final NamedApiResource moveLearnMethod;
  final int? order;

  factory PokemonMoveVersion.fromJson(Map<String, dynamic> json) =>
      _$PokemonMoveVersionFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonMoveVersionToJson(this);

  @override
  List<Object?> get props => [levelLearnedAt, versionGroup, moveLearnMethod, order];
}

@JsonSerializable(explicitToJson: true)
class PokemonStat extends Equatable {
  const PokemonStat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  @JsonKey(name: 'base_stat')
  final int baseStat;
  final int effort;
  final NamedApiResource stat;

  factory PokemonStat.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonStatToJson(this);

  @override
  List<Object?> get props => [baseStat, effort, stat];
}

@JsonSerializable(explicitToJson: true)
class PokemonType extends Equatable {
  const PokemonType({required this.slot, required this.type});

  final int slot;
  final NamedApiResource type;

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonTypeToJson(this);

  @override
  List<Object?> get props => [slot, type];
}

@JsonSerializable()
class PokemonCries extends Equatable {
  const PokemonCries({this.latest, this.legacy});

  final String? latest;
  final String? legacy;

  factory PokemonCries.fromJson(Map<String, dynamic> json) =>
      _$PokemonCriesFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonCriesToJson(this);

  @override
  List<Object?> get props => [latest, legacy];
}

/// Flat default sprites are typed; the deeply/irregularly nested `other` and
/// `versions` trees are kept raw because their shape varies per Pokémon.
@JsonSerializable(explicitToJson: true)
class PokemonSprites extends Equatable {
  const PokemonSprites({
    this.frontDefault,
    this.frontShiny,
    this.frontFemale,
    this.frontShinyFemale,
    this.backDefault,
    this.backShiny,
    this.backFemale,
    this.backShinyFemale,
    this.other,
    this.versions,
  });

  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @JsonKey(name: 'front_female')
  final String? frontFemale;
  @JsonKey(name: 'front_shiny_female')
  final String? frontShinyFemale;
  @JsonKey(name: 'back_default')
  final String? backDefault;
  @JsonKey(name: 'back_shiny')
  final String? backShiny;
  @JsonKey(name: 'back_female')
  final String? backFemale;
  @JsonKey(name: 'back_shiny_female')
  final String? backShinyFemale;
  final Map<String, dynamic>? other;
  final Map<String, dynamic>? versions;

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonSpritesToJson(this);

  @override
  List<Object?> get props => [
        frontDefault,
        frontShiny,
        frontFemale,
        frontShinyFemale,
        backDefault,
        backShiny,
        backFemale,
        backShinyFemale,
        other,
        versions,
      ];
}