import 'package:apps/familyMembers_folder/familyMembers_model.dart';
import 'package:apps/reusable.dart';
import 'package:flutter/material.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Family_Model> familyMembers = const [
    Family_Model(
      image: "assets/images/family_members/family_daughter.png",
      entext: "Daughter",
      jptext: "Daughter",
      color: Color.fromARGB(26, 224, 96, 11),
    ),
    Family_Model(
      image: "assets/images/family_members/family_father.png",
      entext: "Father",
      jptext: "Father",
      color: Color.fromARGB(96, 230, 13, 13),
    ),
    Family_Model(
      image: "assets/images/family_members/family_son.png",
      entext: "Son",
      jptext: "Son",
      color: Color.fromARGB(95, 13, 230, 140),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family members", style: TextStyle(fontSize: 30)),
      ),
      body: ListView(
        children: GetFamilyList(familyMembers)
      ),
    );
  }

  List<Widget> GetFamilyList(List<Family_Model> familyMembers) {
    List<Widget> Families = [];
    for (int i = 0; i < familyMembers.length; i++) {
      Families.add(familyMemberWidget(member: familyMembers[i]));
    }
    return Families;
  }
}
