import 'package:flutter/material.dart';
import 'package:pokebuddy/model/pokemon.dart';
import 'package:flutter/foundation.dart';

class DetailItemScreen extends StatelessWidget {
  final Pokemon foundPokemon;
  const DetailItemScreen(this.foundPokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 700) {
          return DetailWebPage(foundPokemon);
        } else {
          return DetailMobilePage(foundPokemon);
        }
      },
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final Pokemon foundPokemon;

  const DetailWebPage(this.foundPokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(foundPokemon.imageUrl),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: IconButton(
                                        icon: const Icon(
                                          Icons.arrow_back,
                                          color: Color(0xffF77F00),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            children: [
                              Card(
                                 shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                                elevation: 4,
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            foundPokemon.name,
                                            style: const TextStyle(
                                                fontSize: 30.0,
                                                fontFamily: 'KanaSans',
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const FavoriteButton()
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            foundPokemon.species,
                                            style: const TextStyle(
                                                fontSize: 16.0,
                                                fontFamily: 'KanaSans'),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 40,
                                            child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                shrinkWrap: true,
                                                physics: const ScrollPhysics(),
                                                itemCount:
                                                    foundPokemon.type.length,
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  return Container(
                                                    margin: const EdgeInsets.only(
                                                        right: 8, top: 8),
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffF77F00),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                16)),
                                                    child: Center(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        foundPokemon.type[index],
                                                        style: const TextStyle(
                                                            fontFamily:
                                                                'KanaSans',
                                                            color: Colors.white),
                                                      ),
                                                    )),
                                                  );
                                                }),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        foundPokemon.desc,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                            fontSize: 14.0,
                                            fontFamily: 'KanaSans',
                                            color: Colors.black54),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 16),
                                            child: ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xffF77F00),
                                              ),
                                              onPressed: () {},
                                              label: const Text(
                                                'Grab This Pokemon',
                                                style: TextStyle(
                                                    fontFamily: 'KanaSans',
                                                    fontSize: 16),
                                              ),
                                              icon: const Icon(Icons.store),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Card(
                                 shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                                elevation: 4,
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const Row(
                                        children: [
                                          Expanded(
                                            child: Text("Weight",
                                                style: TextStyle(
                                                    fontFamily: 'KanaSans',
                                                    color: Colors.black87)),
                                          ),
                                          Expanded(
                                            child: Text("Height",
                                                style: TextStyle(
                                                    fontFamily: 'KanaSans',
                                                    color: Colors.black87)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.only(right: 4),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    "${foundPokemon.weight} kg",
                                                    style: const TextStyle(
                                                        fontFamily: 'KanaSans',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.only(left: 4),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    "${foundPokemon.height} m",
                                                    style: const TextStyle(
                                                        fontFamily: 'KanaSans',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 8),
                                        child: const Row(
                                          children: [
                                            Expanded(
                                              child: Text("Abilities",
                                                  style: TextStyle(
                                                      fontFamily: 'KanaSans',
                                                      color: Colors.black87)),
                                            ),
                                            Expanded(
                                              child: Text("National",
                                                  style: TextStyle(
                                                      fontFamily: 'KanaSans',
                                                      color: Colors.black87)),
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.only(right: 4),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    foundPokemon.abilities,
                                                    style: const TextStyle(
                                                        fontFamily: 'KanaSans',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin:
                                                  const EdgeInsets.only(left: 4),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black45,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Text(
                                                    foundPokemon.nationalnumb,
                                                    style: const TextStyle(
                                                        fontFamily: 'KanaSans',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Pokemon foundPokemon;

  const DetailMobilePage(this.foundPokemon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Stack(
                children: <Widget>[
                  Image.asset(foundPokemon.imageUrl),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Color(0xffF77F00),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: FavoriteButton(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      foundPokemon.name,
                      style: const TextStyle(
                          fontSize: 24,
                          fontFamily: 'KanaSans',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      foundPokemon.species,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'KanaSans',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: foundPokemon.type.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 8, top: 8),
                              decoration: BoxDecoration(
                                  color: const Color(0xffF77F00),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  foundPokemon.type[index],
                                  style: const TextStyle(
                                      fontFamily: 'KanaSans',
                                      color: Colors.white),
                                ),
                              )),
                            );
                          }),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      foundPokemon.desc,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'KanaSans',
                          color: Colors.black45),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Text("Weight",
                                style: TextStyle(
                                    fontFamily: 'KanaSans',
                                    color: Colors.black45)),
                          ),
                          Expanded(
                            child: Text("Height",
                                style: TextStyle(
                                    fontFamily: 'KanaSans',
                                    color: Colors.black45)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black45,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "${foundPokemon.weight} kg",
                                  style: const TextStyle(
                                      fontFamily: 'KanaSans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black45,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "${foundPokemon.height} m",
                                  style: const TextStyle(
                                      fontFamily: 'KanaSans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: const Row(
                        children: [
                          Expanded(
                            child: Text("Abilities",
                                style: TextStyle(
                                    fontFamily: 'KanaSans',
                                    color: Colors.black45)),
                          ),
                          Expanded(
                            child: Text("National",
                                style: TextStyle(
                                    fontFamily: 'KanaSans',
                                    color: Colors.black45)),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black45,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  foundPokemon.abilities,
                                  style: const TextStyle(
                                      fontFamily: 'KanaSans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black45,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  foundPokemon.nationalnumb,
                                  style: const TextStyle(
                                      fontFamily: 'KanaSans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF77F00),
                        ),
                        onPressed: () {},
                        label: const Text(
                          'Grab This Pokemon',
                          style:
                              TextStyle(fontFamily: 'KanaSans', fontSize: 16),
                        ),
                        icon: const Icon(Icons.store),
                      ),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
