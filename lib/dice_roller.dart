import 'package:flutter/material.dart';
import 'dart:math';
//this is our stateful widget for changing the state of the class
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  // we create a state and this returns a state object, the state is a list and it returns the the DiceROller class
 State<DiceRoller> createState() {
  return _DiceRollerState();
 }
}

// we always return two classes with state widget, and this will be a private class
  final randomized = Random();

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceROll = 2;

  //defined a method for the onPress function, it should return nothing
  void rollDice() {
    setState(() { //this helps us to rebuild the ui state and update the variable  activeDiceImage      
    currentDiceROll = randomized.nextInt(6) + 1;  //this helps us to generate a random int
    });
    // print('Changing image...');
  }


  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-$currentDiceROll.png', width: 200),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text(' Roll Dice '),
            )
          ],
        );
  }
}
