import 'package:flutter/material.dart';
import 'package:grid_flutter/detailed_screen.dart';

import 'main.dart';
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Poke app', style: TextStyle(
            color: Colors.white),)),
        leading: Icon(Icons.menu, color: Colors.white,),
      ),
      body: GridView.builder(gridDelegate: const
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Poke(l[index]),),);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(height: 150,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        '${l[index].image}',
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${l[index].name}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: l.length,
      ),
    );
  }
}

// MediaQuery.removePadding(
// context: context,
// removeTop: true,
// child: GridView.builder(
// gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// ),
// itemCount: l.length,
// itemBuilder: (BuildContext context, int index) {
// return Card(
// // color: Colors.amber,
// child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Image.network('${l[index].image}', height: 50, width: 50,), Text('${l[index].txt}' ,style: TextStyle(fontSize: 20),)]),
// );
// }
// ))
// ,
