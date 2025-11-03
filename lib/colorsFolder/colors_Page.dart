import 'package:apps/reusable.dart';
import 'package:flutter/material.dart';

import '../familyMembers_folder/familyMembers_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Family_Model> Tiles = const [
    Family_Model(
      audio:"sounds/colors/gray.wav",
      image: "assets/images/colors/color_brown.png",
      entext: "ving22",
      jptext: "cjpText",
      color: Colors.blueAccent,
    ),
    Family_Model(
      audio:"sounds/colors/white.wav",
      image: "assets/images/colors/color_red.png",
      entext: "jiji22",
      jptext: "cjpText",
      color: Color.fromARGB(255, 37, 243, 29),
    ),
    Family_Model(
      audio:"sounds/colors/brown.wav",
      image: "assets/images/colors/yellow.png",
      entext: "etrtert888",
      jptext: "cjpText",
      color: Color.fromARGB(255, 243, 29, 197),
    ),
    Family_Model(
      audio:"sounds/colors/yellow.wav",
      image: "assets/images/colors/color_dusty_yellow.png",
      entext: "etrtert888",
      jptext: "cjpText",
      color: Color.fromARGB(255, 130, 35, 218),
    ),
    Family_Model(
      audio:"sounds/colors/dusty yellow.wav",
      image: "assets/images/colors/color_red.png",
      entext: "jiji22",
      jptext: "cjpText",
      color: Color.fromARGB(255, 37, 243, 29),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ColorS")),
      body: ListView(children: getList(Tiles)),
    );
  }

  List<Widget> getList(List<Family_Model> Tiles) {
    List<Widget> itemsColor = [];
    for (int i = 0; i < Tiles.length; i++) {
      itemsColor.add(colorTile(Vito: Tiles[i]));
    }
    return itemsColor;
  }
}
