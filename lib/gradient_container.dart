import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//creating a custom widget class 
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2,
      {super.key}); //this should have a name key parameter which extends from the StatelessWidget, mostly used to access parameters

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  

  //the stateless widget is a class that comes from the flutter framework we are going to inherit that class
  //this tells that we are override a method from the statelessWidget
  Widget build(context) {
    //we need to call the build method here which will return a widget, we will pass in a parameter- a must called context or ctx, this context will contain some information in the information tree.
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
  
  
}
