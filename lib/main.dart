import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'detailed_screen.dart';
import 'home.dart';

var l = <Data>[
 Data(name: 'Bulbasaur', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/bulbasaur.png', height: .9, weight: 1),
  Data(name: 'charmander', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/charmander.png', height: .9, weight: 1),
  Data(name: 'chespin', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/chespin.png', height: .9, weight: 1),
  Data(name: 'chikorita', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/chikorita.png', height: .9, weight: 1),
  Data(name: 'chimchar', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/chimchar.png', height: .9, weight: 1),
  Data(name: 'fennekin', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/fennekin.png', height: .9, weight: 1),
  Data(name: 'froakie', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/froakie.png', height: .9, weight: 1),
  Data(name: 'grookey', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/grookey.png', height: .9, weight: 1),
  Data(name: 'snivy', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/snivy.png', height: .9, weight: 1),
  Data(name: 'rowlet', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/rowlet.png', height: .9, weight: 1),
  Data(name: 'piplup', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/piplup.png', height: .9, weight: 1),
  Data(name: 'piplup', image: 'https://raw.githubusercontent.com/scitbiz/flutter_pokedex/master/assets/images/piplup.png', height: .9, weight: 1),
];

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F1',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: MyHomePage(),

    );
  }
}

