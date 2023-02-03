import 'package:flutter/material.dart';
import 'package:pokedex_01/data_page.dart';
// import 'package:pokedex_01/data_page.dart';
// import 'package:pokedex_01/list_page.dart';

class DetailsPage extends StatelessWidget {
  final Pokemons pokemon;
  const DetailsPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name ?? ''),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 233, 224, 224),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Image.network(
                        pokemon.thumbnailImage ?? '',
                        height: 200,
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('#${pokemon.number}'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(pokemon.description ?? ''),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Type: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('${pokemon.type}'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Weakness:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(' ${pokemon.weakness}'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
