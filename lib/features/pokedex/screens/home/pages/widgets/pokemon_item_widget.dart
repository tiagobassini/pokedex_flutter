


import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';
import 'package:pokedex/features/pokedex/screens/details/container/datail_container.dart';
import 'package:pokedex/features/pokedex/screens/home/pages/widgets/type_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget ({
    super.key,
    required this.pokemon,
    required this.onTap
  });

  final Pokemon pokemon;

  final Function(String, DetailArguments)onTap;

  @override
  Widget build(BuildContext context) {
    return 
      GestureDetector(
        onTap: () => onTap('/details', DetailArguments(pokemon: pokemon)) ,
        child: Stack(
          children: 
          [
            Container
            (
              decoration: BoxDecoration(
                color: pokemon.baseColor!.withOpacity(0.8),
                borderRadius: BorderRadius.circular(16)
              ),

              child: Padding
              (
                padding: const EdgeInsets.all(16),
                child: Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                    Row
                    (
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: 
                      [
                        Flexible
                        (
                          child: Text
                          (
                            pokemon.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            )
                          )
                        ),
                        Text
                        (
                          '#${pokemon.num}',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          )
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: 
                      [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: pokemon.type.map((e)=> TypeWidget(name: e)).toList(),
                        ),
                        const Flexible(
                          child: SizedBox(
                            height: 100,
                            width: 100,
                          )
                        )
                      ],
                      
                    )
                  ],
                ),
              ),        
            ),
            Positioned(
              bottom: 12,
              right: 4,
              child: Image.network(pokemon.image)
            )
          ],
        ),
      );
  }
}