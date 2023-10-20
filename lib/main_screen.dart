import 'package:flutter/material.dart';
import 'package:pokebuddy/model/pokemon.dart';
import 'package:pokebuddy/model/feature.dart';
import 'package:pokebuddy/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Pokemon> pokemons = [
      Pokemon('Charizard', 'images/pokemon_1.png'),
      Pokemon('Zoroark', 'images/pokemon_2.png'),
      Pokemon('Leafon', 'images/pokemon_3.png'),
      Pokemon('Boltund', 'images/pokemon_4.png'),
      Pokemon('Great Tusk', 'images/pokemon_5.png'),
      Pokemon('Fuecoco', 'images/pokemon_6.png'),
      // Add more Pokemons as needed
    ];

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
              margin: const EdgeInsets.all(16.0),
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
            Container(
                margin: const EdgeInsets.only(left: 6.0, right: 16.0),
                child: Row(
                  children: [
                    const Expanded(
                      child: MyCustomForm(),
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
                )),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: GridView.count(
                padding: EdgeInsets.zero,
                childAspectRatio: 0.9,
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(pokemons.length, (index) {
                  double imageWidth = MediaQuery.of(context).size.width / 2;
                  return Column(
                    children: <Widget>[
                      Card(
                        elevation: 2,
                        child: Column(children: [
                          Image.asset(
                            pokemons[index].imageUrl,
                            width: imageWidth,
                            height: 150,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                pokemons[index].name,
                                style: const TextStyle(
                                  fontFamily: 'KanaSans',
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          )
                        ]),
                      )
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Trending pokemon',
            hintStyle: TextStyle(fontFamily: 'KanaSans'),
          ),
           style: TextStyle(
                fontFamily: 'KanaSans', // Replace with your desired font family
                fontSize: 16.0, // You can also set font size here
              ),
        )
      ],
    );
  }
}

