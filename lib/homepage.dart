import 'package:apps/colorsFolder/colors_Page.dart';
import 'package:apps/familyMembers_folder/familyMembers_Page.dart';
import 'package:apps/numbers-folder/numbers_Page.dart';
import 'package:apps/reusable.dart';
import 'package:flutter/material.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});
  final List<Slide> slides = const [
    Slide(
      color: Color.fromARGB(255, 153, 247, 4),
      name: "Numbers",
      NamePage: Numbers(),
    ),
    Slide(
      color: Color.fromARGB(255, 3, 109, 77),
      name: "Family Members",
      NamePage: FamilyMembers(),
    ),
    Slide(
      color: Color.fromARGB(255, 49, 162, 238),
      name: "Colors",
      NamePage: ColorsPage(),
    ),
    Slide(
      color: Color.fromARGB(255, 238, 235, 59),
      name: "Phrases",
      NamePage: Numbers(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 90, 49, 238),
          title: Text(
            "Toku App",
            style: TextStyle(
              fontSize: 40,
              color: Color.fromARGB(255, 236, 233, 9),
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(children: getTypeList(slides),),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Image.asset("assets/images/family_members/IMG_٢٠٢٣٠١١٦_١٢١٨٣٩.jpg"),),
            AnimatedIconButton(
              onPressed: () => print('all icons pressed'),
              icons: [
                AnimatedIconItem(icon: Icon(Icons.add),
                  onPressed: () => print('add pressed'),),
                AnimatedIconItem(icon: Icon(Icons.close),
                  onPressed: () => print('add pressed'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getTypeList(List<Slide> slides) {
    List<Widget> homePageSlides = [];
    for (int i = 0; i < slides.length; i++) {
      homePageSlides.add(slides[i]);
    }
    return homePageSlides;
  }
}
