import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xffF77F00),
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      "Profile",
                      style: TextStyle(
                          fontFamily: 'kanaSans',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    PopupMenuButton<int>(
                      color: const Color(0xffF77F00),
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
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ash Ketchum",
                                style: TextStyle(
                                    fontFamily: 'kanaSans',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                "Pokemon Trainer",
                                style: TextStyle(
                                    fontFamily: 'kanaSans',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                          CircleAvatar(
                            radius: 45,
                            backgroundImage:
                                AssetImage('images/profile_pic.jpeg'),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16, bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone_android_outlined,
                                    size: 20,
                                  ),
                                  SizedBox(width: 16.0),
                                  Text(
                                    "89213029139219",
                                    style: TextStyle(
                                        fontFamily: 'kanaSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                              SizedBox(height: 6.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.alternate_email_outlined,
                                    size: 20,
                                  ),
                                  SizedBox(width: 16.0),
                                  Text(
                                    "satoshi@mail.com",
                                    style: TextStyle(
                                        fontFamily: 'kanaSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                              SizedBox(height: 6.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 20,
                                  ),
                                  SizedBox(width: 16.0),
                                  Text(
                                    "Pallet Town (Kantō region)",
                                    style: TextStyle(
                                        fontFamily: 'kanaSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff626262),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "Trainer Level",
                                      style: TextStyle(
                                          fontFamily: 'kanaSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(height: 6.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Master",
                                          style: TextStyle(
                                              fontFamily: 'kanaSans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 2.0),
                                        Icon(
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
                                      style: TextStyle(
                                          fontFamily: 'kanaSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(height: 6.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "97",
                                          style: TextStyle(
                                              fontFamily: 'kanaSans',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 2.0),
                                        Icon(
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
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Battle Stats",
                        style: TextStyle(
                            fontFamily: 'kanaSans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffF77F00),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Badgets Earned",
                        style: TextStyle(
                            fontFamily: 'kanaSans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffF77F00),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Achievement & Medals",
                        style: TextStyle(
                            fontFamily: 'kanaSans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffF77F00),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Friend List",
                        style: TextStyle(
                            fontFamily: 'kanaSans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffF77F00),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Inventory",
                        style: TextStyle(
                            fontFamily: 'kanaSans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffF77F00),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Activity",
                        style: TextStyle(
                            fontFamily: 'kanaSans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffF77F00),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Settings Preferences",
                        style: TextStyle(
                            fontFamily: 'kanaSans',
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffF77F00),
                        size: 20,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
