import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_01/data_page.dart';
import 'package:pokedex_01/details_page.dart';

class ListPage extends StatefulWidget {
  //final ApiPokemon apiPokemon;
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Pokemons> pokemonList = [];

  @override
  void initState() {
    _getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            const Text('Pokédex                                              '),
            Image.network(
              "https://www.pngall.com/wp-content/uploads/4/Pokemon-Pokeball-PNG-HD-Image.png",
              alignment: Alignment.centerLeft,
              filterQuality: FilterQuality.high,
              width: 50,
              height: 50,
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          Pokemons pokemon = pokemonList[index];
          return Card(
            child: ListTile(
              title: Text(pokemon.name ?? ''),
              leading: Image.network(pokemon.thumbnailImage ?? ''),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return DetailsPage(pokemon: pokemon);
                })));
              },
            ),
          );
        },
      ),
    );
  }

  void _getPokemons() async {
    try {
      var response = await Dio().get('http://104.131.18.84/pokemon/');

      if (response.statusCode == 200) {
        setState(() {
          pokemonList = (response.data['data'] as List).map(
            (json) {
              return Pokemons.fromJson(json);
            },
          ).toList();
        });
      } else {
        // ignore: avoid_print
        print('Erro ao carregar os Pokemons');
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
