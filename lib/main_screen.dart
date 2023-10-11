import 'package:flutter/material.dart';
import 'package:pokebuddy/model/pokemon.dart';
import 'package:pokebuddy/model/feature.dart';
import 'package:pokebuddy/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product('Charizard', 'images/pokemon_1.png'),
      Product('Zoroark', 'images/pokemon_2.png'),
      Product('Leafon', 'images/pokemon_3.png'),
      Product('Boltund', 'images/pokemon_4.png'),
      Product('Great Tusk', 'images/pokemon_5.png'),
      Product('Fuecoco', 'images/pokemon_6.png'),
      // Add more products as needed
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
                        backgroundImage: AssetImage('images/profile_pic.jpg'),
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
                                            fontWeight: FontWeight.bold)),
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
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 2.0, // Border width
                        ),
                        borderRadius: BorderRadius.circular(
                            12.0), // Optional: Border radius
                      ),
                      child: const textInput(),
                    ),
                    const Spacer(),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
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
                children: List.generate(products.length, (index) {
                  double imageWidth = MediaQuery.of(context).size.width / 2;
                  return Column(
                    children: <Widget>[
                      Card(
                        elevation: 2,
                        child: Column(children: [
                          Image.asset(
                            products[index].imageUrl,
                            width: imageWidth,
                            height: 150,
                            fit: BoxFit.fill,
                          ),
                          Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                products[index].title,
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

class textInput extends StatefulWidget {
  const textInput({super.key});

  @override
  State<textInput> createState() => _textInputState();
}

class _textInputState extends State<textInput> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Future<void> _showAlertDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible:
        false, // Prevent dialog from being dismissed by tapping outside
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Alert Dialog Title'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This is the content of the alert dialog.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop(); // Close the alert dialog
            },
          ),
        ],
      );
    },
  );
}
