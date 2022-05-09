import 'package:flutter/material.dart';

import 'data.dart';

class Poke extends StatelessWidget {
//  const Poke({Key? key}) : super(key: key);
  Data pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('${pokemon.name}',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        elevation: 0.0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlue,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 50),
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      '${pokemon.name}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Height: ${pokemon.height}',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Weight: ${pokemon.weight}',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Types',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                 SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Grass',
                          style: TextStyle(backgroundColor: Colors.amber,fontSize: 20,color: Colors.white,),
                        ),
                        Text(
                          'Poison',
                          style: TextStyle(backgroundColor: Colors.amber,fontSize: 20,color: Colors.white,),
                        )
                      ],
                    ),
                    Text(
                      'Weakness',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Fire',
                          style: TextStyle(backgroundColor: Colors.redAccent,fontSize: 20,color: Colors.white,),
                        ),
                        Text(
                          'Ice',
                          style: TextStyle(backgroundColor: Colors.redAccent,fontSize: 20,color: Colors.white,),
                        ),
                        Text(
                          'Flying',
                          style: TextStyle(backgroundColor: Colors.redAccent,fontSize: 20,color: Colors.white,),
                        ),
                        Text(
                          'Psychic',
                          style: TextStyle(backgroundColor: Colors.redAccent,fontSize: 20,color: Colors.white,),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text('Next Evaluation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Text('Poison',
                          style: TextStyle(
                              backgroundColor: Colors.green,fontSize: 20,color: Colors.white,
                          ),)],
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.network(
                '${pokemon.image}',
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Poke(this.pokemon);
}
