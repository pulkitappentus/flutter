import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/data/pet_size_list.dart';

import '../../hoofzy_page.dart';

class PetSizeListView extends StatelessWidget {
  const PetSizeListView(
      {Key? key,
        this.petSizeList,
        this.animationController,
        this.animation,
        this.callback}) : super(key: key);

  final VoidCallback? callback;
  final PetSizeList? petSizeList;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 24, top: 8, bottom: 16),
              child: Text(
                petSizeList!.title,
                style: GoogleFonts.inter(
                  fontSize: 16.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              )
            ),
          ),
        );
      },
    );
  }
}

/*buildButton(
petSizeList!.title,
context,
() => Navigator.of(context).push(
MaterialPageRoute(
builder: (context) =>  HoofzyPage(),
),
),
),*/

Widget buildButton(String txt, BuildContext context, VoidCallback onTap) {
  final size = MediaQuery.of(context).size;
  return Padding(
    padding: const EdgeInsets.only(top: 12.0),
    child: InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: size.height / 16,
        decoration: BoxDecoration(
          color: Color(0xFFFF867A),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Text(
          txt,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ),
    ),
  );
}