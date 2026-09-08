import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon extends Equatable {
  const Pokemon({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
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
      ];
}