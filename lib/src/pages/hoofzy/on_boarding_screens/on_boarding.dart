import 'package:flutter/material.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/boarding_2.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/boarding_4.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/boarding_5.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/boarding_6.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/boarding_7.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/boarding_8.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/boarding_9.dart';
import '../../../hotel_booking/hotel_app_theme.dart';
import 'boarding_1.dart';
import 'boarding_3.dart';

class OnBoarding extends StatefulWidget{

  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();

}

class _OnBoardingState extends State<OnBoarding> {

  PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new Center(child:new Boarding1()),
    new Center(child:new Boarding2()),
    new Center(child:new Boarding3()),
    new Center(child:new Boarding4()),
    new Center(child:new Boarding5()),
    new Center(child:new Boarding6()),
    new Center(child:new Boarding7()),
    new Center(child:new Boarding8()),
    new Center(child:new Boarding9())
  ];

  int _curr=0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: _list,
      scrollDirection: Axis.horizontal,
      pageSnapping: true,
      physics: BouncingScrollPhysics(),
      controller: controller,
      onPageChanged: (num) {
        print("Current page number is " + num.toString());
        _curr = num;
      },
    );
    //return 
  }
}
Widget getAppBarUI(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: HotelAppTheme.buildLightTheme().backgroundColor,
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.white.withOpacity(0),
            offset: const Offset(0, 2),
            blurRadius: 8.0),
      ],
    ),
    child: Padding(
      //top: MediaQuery.of(context).padding.top,
      padding: EdgeInsets.only(left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            width: AppBar().preferredSize.height,
            height: AppBar().preferredSize.height,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(32.0),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/hoofzy/prpp.png',width: 36,height: 36,fit: BoxFit.fill,)
                ),
              ),
            ),
          ),
          const Expanded(
            child: Text(
              'Hello, Avinash!',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            width: AppBar().preferredSize.height + 40,
            height: AppBar().preferredSize.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Image.asset('assets/hoofzy/notification.png',width: 18,height: 18,fit: BoxFit.fill,)
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/hoofzy/menu.png',width: 18,height: 18,fit: BoxFit.fill,)
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}