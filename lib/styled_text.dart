import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
 const StyledText(this.text, {super.key, b});
//to pass a variable like parameter like text so that the user can dynamicaly pass any text they want, we have to list that in the super constructor.
//although the parameter is not readily available, we have to make it available to the class by  adding it as a variable. using the this.text and the variable name also called text. the this.text looks for a variable called text and sets the value to that variable.


final String text;  //since the variable wont be changed internally we will be using final here.


  @override
  Widget build(context) {
    return  Text(
     text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
