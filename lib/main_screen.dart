import 'package:flutter/material.dart';
import 'package:pokebuddy/detail_item_screen.dart';
import 'package:pokebuddy/model/pokemon.dart';
import 'package:pokebuddy/model/feature.dart';
import 'package:pokebuddy/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Feature> features = [
      Feature('Inventory', Icons.inventory),
      Feature('Contest', Icons.fitbit_sharp),
      Feature('Shop', Icons.store),
      Feature('Social', Icons.people),
      Feature('Training', Icons.catching_pokemon),
      Feature('Rank', Icons.leaderboard),
      Feature('Tracking', Icons.location_on),
      Feature('Quest', Icons.question_mark),
    ];

    return Scaffold(
      appBar: AppBar(
        title:
            Text('Wisata Bandung. Size: ${MediaQuery.of(context).size.width}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 16.0,
                right: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: Text(
                      "Find Your Favourite Pokemon ",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'KanaSans',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProfileScreen();
                      }));
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xffFCBF49),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('images/profile_pic.jpeg'),
                      ),
                    ),
                  )
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: ClipRRect(
                child: Image.asset('images/banner.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: GridView.count(
                padding: EdgeInsets.zero,
                childAspectRatio: 4 / 4,
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(features.length, (index) {
                  return Column(
                    children: <Widget>[
                      Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: <Widget>[
                                    Icon(
                                      features[index].icon,
                                      color: const Color(0xffF77F00),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(features[index].title,
                                        style: const TextStyle(
                                            fontSize: 10.0,
                                            fontFamily: 'KanaSans',
                                            fontWeight: FontWeight.normal)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
              ),
            ),
            const MyCustomList()
          ],
        ),
      ),
    );
  }
}

class MyCustomList extends StatefulWidget {
  const MyCustomList({super.key});

  @override
  State<MyCustomList> createState() => _MyCustomListState();
}

class _MyCustomListState extends State<MyCustomList> {
  List<Pokemon> pokemons = [
    Pokemon(
        'Charizard',
        'images/pokemon_1.png',
        'Flame Pokémon',
        ['Fire', 'Flying'],
        'Charizard is a large dragon-like Pokémon, mainly orange in color. It has two large wings, the underside of which are turquoise. Like Charmander and Charmeleon, it has a flame at the end of its tail.',
        90.5,
        1.7,
        'Blaze',
        '0006'),
    Pokemon(
        'Zoroark',
        'images/pokemon_2.png',
        'Illusion Fox Pokémon',
        ['Dark'],
        'Zoroark is a bipedal, slate gray, fox-like Pokémon with crimson and black accents. It has a pointed snout and ears with red insides. It also has some red that rims its eyes and mouth.',
        81.1,
        1.6,
        'Illusion',
        '0571'),
    Pokemon(
        'Leafeon',
        'images/pokemon_3.png',
        'Verdant Pokémon',
        ['Grass'],
        'Leafeon is a mammalian, quadrupedal Pokémon. Its body is tan with dark brown paws. It has a multitude of small green sprouts growing all over its legs, chest, and back, with the longest one on its head, in front of four tan tufts of fur. Leafeon green ears and tail resemble tattered leaves. It has brown eyes and a small, brown nose.',
        25.5,
        1.0,
        'Leaf Guard',
        '0470'),
    Pokemon(
        'Boltund',
        'images/pokemon_4.png',
        'Dog Pokémon',
        ['Electric'],
        'Boltund is a quadrupedal, canine Pokémon. Its two front paws are white with a yellow stripe on each leg above the white part, which leads to its desaturated green legs. Its back two back paws are a darker yellow with a lighter yellow on top of it that also leads to desaturated green legs. ',
        34.0,
        1.0,
        'Strong Jaw',
        '0836'),
    Pokemon(
        'Great Tusk',
        'images/pokemon_5.png',
        'Paradox Pokémon',
        ['Ground', 'Fighting'],
        'Great Tusk is a large gray proboscidean Pokémon. Its trunk, topside, and tail are covered in dark purple plates, with three rows of pinkish-red spikes on top. Similar pinkish-red accents form around its slanted yellow eyes, as well as on its body as spots.',
        320.0,
        3.2,
        'Protosynthesis',
        '0984'),
    Pokemon(
        'Fuecoco',
        'images/pokemon_6.png',
        'Fire Croc Pokémon',
        ['Fire'],
        'Fuecoco is a bipedal crocodilian Pokémon with a mostly red body and a white stomach and face. Its body contains a small flame sac, which constantly leaks fire energy due to its size.',
        9.8,
        0.4,
        'Blaze',
        '0909'),
    // Add more Pokemons as needed
  ];
  // This list holds the data for the list view
  List<dynamic> _foundPokemons = [];
  @override
  initState() {
    _foundPokemons = pokemons;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<dynamic> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = pokemons;
    } else {
      results = pokemons
          .where((user) =>
              user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use t
      //he toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundPokemons = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) => _runFilter(value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Trending pokemon',
                        hintStyle: TextStyle(fontFamily: 'KanaSans'),
                      ),
                      style: const TextStyle(
                        fontFamily:
                            'KanaSans', // Replace with your desired font family
                        fontSize: 16.0, // You can also set font size here
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 60,
                        width: 60,
                        color: const Color(0xffF77F00),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              ),
            ),
            GridView.count(
              padding: EdgeInsets.zero,
              childAspectRatio: 0.9,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(_foundPokemons.length, (index) {
                //  final Pokemon pokemon = _foundPokemons[index],

                double imageWidth = MediaQuery.of(context).size.width / 2;
                return Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailItemScreen(_foundPokemons[index]);
                        }));
                      },
                      child: Card(
                        elevation: 2,
                        child: Column(children: [
                          Image.asset(
                            _foundPokemons[index].imageUrl,
                            width: imageWidth,
                            height: 150,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                _foundPokemons[index].name,
                                style: const TextStyle(
                                  fontFamily: 'KanaSans',
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                    )
                  ],
                );
              }),
            ),
          ],
        ));
  }
}
