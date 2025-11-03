import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// import 'package:gap/gap.dart';
class Slide extends StatelessWidget {
  const Slide({
    super.key,
    required this.color,
    required this.name,
    required this.NamePage,
  });
  final dynamic color;
  final String name;
  final dynamic NamePage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return NamePage;
            },
          ),
        );
      },
      child: Container(
        color: color,
        width: double.infinity,
        height: 80,
        child: Center(child: Text(name, style: TextStyle(fontSize: 30))),
      ),
    );
  }
}

// *****************************************************
numCategory({numberTile}) {
  return Container(
    color: numberTile.color,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // height: 50,
            // width: 50,
            color: Colors.white,
            child: Image.asset(numberTile.image),
          ),
          Column(
            children: [
              Text(
                numberTile.entext,
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Text(
                numberTile.jptext,
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
          AnimatedIconButton(
            onPressed: () => print('all icons pressed'),
            icons: <AnimatedIconItem>[
              AnimatedIconItem(
                icon: Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                  size: 65,
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource("sounds/colors/black.wav"));
                },
              ),
              AnimatedIconItem(
                icon: Icon(
                  Icons.pause_circle_outline_outlined,
                  color: Colors.white,
                  size: 65,
                ),
                onPressed: () {
                  print('add pressed');
                  final player = AudioPlayer();
                  player.pause();
                },
              ),
            ],
          ),
          // const Gap(0.2)
        ],
      ),
    ),
  );
}

///////////////////////////////////////////////////////////////////////////

class familyMemberWidget extends StatelessWidget {
  familyMemberWidget({super.key, required this.member});
  final dynamic member;
  final player = AudioPlayer();
  final bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: member.color,
      // height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(member.image),
          Column(
            children: [
              Text(
                member.entext,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                member.jptext,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
          AnimatedIconButton(
            onPressed: () {
              print('all icons pressed');
            },
            icons: <AnimatedIconItem>[
              AnimatedIconItem(
                icon: Icon(
                  Icons.play_circle_outline,
                  color: Colors.white,
                  size: 65,
                ),
                onPressed: () {
                  isPlaying == false? player.play(UrlSource("https://samplelib.com/lib/preview/mp3/sample-3s.mp3")): player.resume();
                  isPlaying==true;
                  // AudioControl();
                },
              ),
              AnimatedIconItem(
                icon: Icon(
                  Icons.pause_circle_outline_outlined,
                  color: Colors.white,
                  size: 65,
                ),
                onPressed: () {
                  print('add pressed');
                  isPlaying == true?player.pause():player.stop();
                  isPlaying==false;
                  // AudioControl();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ***************************************************

colorTile({Vito}) {
  return Container(
    color: Vito.color,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(Vito.image),
        Column(
          children: [
            Text(
              Vito.centext,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              Vito.jptext,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
        GestureDetector(
          child: Icon(Icons.airplanemode_active_sharp, size: 80),
          onTap: () {
            final player = AudioPlayer();
            player.play(
              AssetSource("assets/sounds/colors/black.wav"),
            ); // equivalent to setSource(UrlSource(url));
          },
        ),
      ],
    ),
  );
}

///////////////////////////////////////////////////////////////////////////////
