import 'package:apps/reusable.dart';
import 'package:flutter/material.dart';

import '../familyMembers_folder/familyMembers_model.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<Family_Model> number = const [
    Family_Model(
      entext: "one",
      jptext: "chi",
      color: Color.fromARGB(255, 49, 232, 238),
      image: "assets/images/numbers/number_one.png",
    ),
    Family_Model(
      entext: "two",
      jptext: "chi",
      color: Color.fromARGB(255, 169, 49, 238),
      image: "assets/images/numbers/number_two.png",
    ),
    Family_Model(
      entext: "one",
      jptext: "chi",
      color: Color.fromARGB(255, 134, 238, 49),
      image: "assets/images/numbers/number_three.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 49, 232, 238),
        title: Text(
          "Numbers",
          style: TextStyle(
            fontSize: 40,
            color: Color.fromARGB(255, 65, 17, 236),
          ),
        ),
      ),
      body: ListView(
        children: numSlide(number)
      ),
    );
  }
  List<Widget> numSlide(List<Family_Model> number){
    List<Widget> numTile=[];
    for(int i=0;i<number.length;i++){
      numTile.add(numCategory(numberTile:number[i]));
    }
    return numTile;
  }
}
