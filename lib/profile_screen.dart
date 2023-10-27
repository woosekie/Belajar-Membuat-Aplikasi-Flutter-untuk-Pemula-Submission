import 'package:flutter/material.dart';

var informationTextStyle = const TextStyle(
    fontFamily: 'kanaSans', fontSize: 14, fontWeight: FontWeight.normal);

var informationTextStyle2 = const TextStyle(
    fontFamily: 'kanaSans', fontSize: 20, fontWeight: FontWeight.bold);

var informationTextStyle3 = const TextStyle(
    fontFamily: 'kanaSans', fontSize: 15, fontWeight: FontWeight.bold);

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return const DetailWebPage();
        } else {
          return const DetailMobilePage();
        }
      },
    );
  }
}

class DetailWebPage extends StatelessWidget {
  const DetailWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xffF77F00),
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'KanaSans'),
        ),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<int>(
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xffF77F00),
            ),
            iconSize: 30,
            color: Colors.white,
            itemBuilder: (context) => [
              const PopupMenuItem(
                  child: Text(
                "Edit Information",
                style: TextStyle(fontFamily: "KanaSans"),
              )),
              const PopupMenuItem(
                  child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Logout",
                    style: TextStyle(fontFamily: "KanaSans"),
                  ),
                ],
              )),
            ],
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 64,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Settings',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    fontFamily: 'KanaSans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.shield_moon_outlined,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Battle Stats',
                                  style: TextStyle(
                                      fontSize: 18.0, fontFamily: 'KanaSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.check_circle_outline,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Badgets Earned',
                                  style: TextStyle(
                                      fontSize: 18.0, fontFamily: 'KanaSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.emoji_events_outlined,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Achievement & Medals',
                                  style: TextStyle(
                                      fontSize: 18.0, fontFamily: 'KanaSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.three_p_outlined,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Friend List',
                                  style: TextStyle(
                                      fontSize: 18.0, fontFamily: 'KanaSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.inventory_2_outlined,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Inventory',
                                  style: TextStyle(
                                      fontSize: 18.0, fontFamily: 'KanaSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.explore_outlined,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Activity',
                                  style: TextStyle(
                                      fontSize: 18.0, fontFamily: 'KanaSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: const Row(
                            children: <Widget>[
                              Icon(
                                Icons.filter_list,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Settings Prefences',
                                  style: TextStyle(
                                      fontSize: 18.0, fontFamily: 'KanaSans'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Card(
                  elevation: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Pokemon Trainer',
                                style: TextStyle(
                                    fontSize: 26.0,
                                    fontFamily: 'KanaSans',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 52,
                              backgroundColor: Color(0xffF77F00),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('images/profile_pic.jpeg'),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Text(
                                              "Trainer Level",
                                              style: informationTextStyle,
                                            ),
                                            const SizedBox(height: 6.0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Master",
                                                  style: informationTextStyle2,
                                                ),
                                                const SizedBox(width: 2.0),
                                                const Icon(
                                                  Icons.local_fire_department,
                                                  color: Color(0xffF77F00),
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Text(
                                              "Total Pokemon",
                                              style: informationTextStyle,
                                            ),
                                            const SizedBox(height: 6.0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "97",
                                                  style: informationTextStyle2,
                                                ),
                                                const SizedBox(width: 2.0),
                                                const Icon(
                                                  Icons
                                                      .catching_pokemon_outlined,
                                                  color: Color(0xffF77F00),
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: const Row(
                            children: [
                              Expanded(
                                child: Text("Name",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Text("Phone",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(right: 8, top: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "Ash Ketchum",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans', fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 8, top: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "291390219032",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans', fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: const Row(
                            children: [
                              Expanded(
                                child: Text("Email",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Text("Location",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(right: 8, top: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "satoshi@mail.com",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans', fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 8, top: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black45,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "Pallet Town (Kanto region)",
                                    style: TextStyle(
                                        fontFamily: 'KanaSans', fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xffF77F00),
            size: 30,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'KanaSans'),
        ),
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<int>(
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xffF77F00),
            ),
            iconSize: 30,
            color: Colors.white,
            itemBuilder: (context) => [
              const PopupMenuItem(
                  child: Text(
                "Edit Information",
                style: TextStyle(fontFamily: "KanaSans"),
              )),
              const PopupMenuItem(
                  child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.black,
                  ),
                  SizedBox(width: 6),
                  Text(
                    "Logout",
                    style: TextStyle(fontFamily: "KanaSans"),
                  ),
                ],
              )),
            ],
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
          child: Container(
        color: const Color(0xfff4f4f4),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Ash Ketchum",
                                style: TextStyle(
                                    fontFamily: 'kanaSans',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                "Pokemon Trainer",
                                style: informationTextStyle,
                              )
                            ],
                          ),
                          const CircleAvatar(
                            radius: 45,
                            backgroundImage:
                                AssetImage('images/profile_pic.jpeg'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.phone_outlined,
                                      size: 20,
                                      color: Color(0xffF77F00),
                                    ),
                                    const SizedBox(width: 16.0),
                                    Text(
                                      "89213029139219",
                                      style: informationTextStyle,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 6.0),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.mail_outline,
                                      size: 20,
                                      color: Color(0xffF77F00),
                                    ),
                                    const SizedBox(width: 16.0),
                                    Text(
                                      "satoshi@mail.com",
                                      style: informationTextStyle,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 6.0),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                      color: Color(0xffF77F00),
                                    ),
                                    const SizedBox(width: 16.0),
                                    Text(
                                      "Pallet Town (Kantō region)",
                                      style: informationTextStyle,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Trainer Level",
                                        style: informationTextStyle,
                                      ),
                                      const SizedBox(height: 6.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Master",
                                            style: informationTextStyle2,
                                          ),
                                          const SizedBox(width: 2.0),
                                          const Icon(
                                            Icons.local_fire_department,
                                            color: Color(0xffF77F00),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Total Pokemon",
                                        style: informationTextStyle,
                                      ),
                                      const SizedBox(height: 6.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "97",
                                            style: informationTextStyle2,
                                          ),
                                          const SizedBox(width: 2.0),
                                          const Icon(
                                            Icons.catching_pokemon_outlined,
                                            color: Color(0xffF77F00),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 8, top: 8),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Battle Stats",
                                          style: informationTextStyle3,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color(0xffF77F00),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0xfff4f4f4),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Badgets Earned",
                                          style: informationTextStyle3,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color(0xffF77F00),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0xfff4f4f4),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Achievement & Medals",
                                          style: informationTextStyle3,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color(0xffF77F00),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0xfff4f4f4),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Friend List",
                                          style: informationTextStyle3,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color(0xffF77F00),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0xfff4f4f4),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Inventory",
                                          style: informationTextStyle3,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color(0xffF77F00),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0xfff4f4f4),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Activity",
                                          style: informationTextStyle3,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color(0xffF77F00),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Color(0xfff4f4f4),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Setting Preferences",
                                          style: informationTextStyle3,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Color(0xffF77F00),
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
