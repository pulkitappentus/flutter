import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:login_ui_demo/src/pages/hoofzy/hoofzy_app_theme.dart';
import 'package:login_ui_demo/src/pages/hoofzy/tabIcon_data.dart';
import 'package:login_ui_demo/src/pages/hoofzy/training_program_data.dart';
import 'package:login_ui_demo/src/pages/hoofzy/training_program_list.dart';
import 'package:login_ui_demo/src/pages/sign_up.dart';
import '../../hotel_booking/hotel_app_theme.dart';
import '../../hotel_booking/hotel_list_view.dart';
import '../../hotel_booking/model/hotel_list_data.dart';
import 'bottom_navigation_view/bottom_bar_view.dart';
import 'hoofzy_design_app_theme.dart';
import 'knowledge_book_list_view.dart';
import 'knowledge_drama_list.dart';
import 'knowledge_drama_list_view.dart';
import 'knowledge_program_list.dart';

class HoofzyPager extends StatefulWidget{

  const HoofzyPager({Key? key}) : super(key: key);

  @override
  _HoofzyPagerState createState() => _HoofzyPagerState();

}

class _HoofzyPagerState extends State<HoofzyPager> with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        //color: const Color(0xFFFFF4DB),
        //borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(colors: [Color(0xFF0E333D), Color(0xFF185262)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height: 470,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(35)
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Pets Size')
                    
                  ],
                ),
              ),
            ),

          ),
        ],
      ),
    );
  }
}

/*
child: Padding(
padding: const EdgeInsets.only(top: 124.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Padding(
padding: EdgeInsets.only(left: 16),
child: Text(
'Skip',
textAlign: TextAlign.start,
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 16,
color: Colors.white
),
),
),
SizedBox(
child: Image.asset(
'assets/hoofzy/furry_friend.png',
fit: BoxFit.contain
),
),
Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Text(
'Train your furry friend',
textAlign: TextAlign.center,
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 16,
color: Colors.black
),
),
],
),
],
),
),
*/





