import 'package:flutter/material.dart';
import 'package:anime_chainsawman/character_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2 - 50,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background1.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          'assets/images/logo.png',
                          width: 100,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        'CHAINSAWMAN CHARACTERS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'a young man left for the dead is reborn as a powerful \n devil-human hybrid after merging with his pet devil and is soon enlisted into an organization dedicated to hunting devils.',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/background2.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(child: CharacterSlider()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
