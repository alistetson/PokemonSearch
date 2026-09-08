import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokemonsearch/repo/pokeapi_repo/pokeapi_repo.dart';

part 'pokemondetail_state.g.dart';

enum PokemonDetailStateX { intial, loading, success, failure }

@JsonSerializable()
final class PokemonDetailState extends Equatable {
  final PokemonDetailStateX status;
  final Pokemon? pokemon;

  const PokemonDetailState({required this.status, this.pokemon});

  factory PokemonDetailState.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailStateFromJson(json);

  PokemonDetailState copyWith({PokemonDetailStateX? status, Pokemon? pokemon}) {
    return PokemonDetailState(
      status: status ?? this.status,
      pokemon: pokemon ?? this.pokemon,
    );
  }

  Map<String, dynamic> toJson() => _$PokemonDetailStateToJson(this);

  @override
  List<Object?> get props => [status, pokemon];
}
