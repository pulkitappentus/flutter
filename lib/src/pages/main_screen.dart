import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_demo/src/pages/hoofzy/on_boarding_screens/on_boarding.dart';
import 'package:login_ui_demo/src/pages/login_page.dart';
import 'package:login_ui_demo/src/pages/page_test_view.dart';
import 'package:login_ui_demo/src/pages/sign_in_1.dart';
import 'package:login_ui_demo/src/pages/sign_in_2.dart';
import 'package:login_ui_demo/src/pages/sign_in_3.dart';
import 'package:login_ui_demo/src/pages/sign_in_4.dart';
import 'package:login_ui_demo/src/pages/sign_in_5.dart';
import 'package:login_ui_demo/src/pages/sign_in_6.dart';
import 'package:login_ui_demo/src/pages/sign_in_7.dart';
import 'package:login_ui_demo/src/pages/sign_in_8.dart';
import 'package:login_ui_demo/src/pages/sign_in_9.dart';
import 'package:login_ui_demo/src/pages/sign_in_10.dart';
import 'package:login_ui_demo/src/pages/sign_up.dart';

import '../hotel_booking/hotel_home_screen.dart';
import '../meditation/meditation_screen.dart';
import 'hoofzy/hoofzy_page.dart';
import 'hoofzy/introduction_screen/introduction_view.dart';
import 'hoofzy/on_boarding_screens/boarding_1.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false), //to hide scrollbar
          child: ListView(
            children: [
             // logo(100, 100),
              const SizedBox(
                height: 16,
              ),
              richText(18),
             /* buildButton(
                'Design 1',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInOne(),
                  ),
                ),
              ),
              buildButton(
                'Design 2',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInTwo(),
                  ),
                ),
              ),
              buildButton(
                'Design 3',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInThree(),
                  ),
                ),
              ),
              buildButton(
                'Design 4',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInFour(),
                  ),
                ),
              ),
              buildButton(
                'Design 5',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInFive(),
                  ),
                ),
              ),
              buildButton(
                'Design 6',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInSix(),
                  ),
                ),
              ),
              buildButton(
                'Design 7',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInSeven(),
                  ),
                ),
              ),
              buildButton(
                'Design 8',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInEight(),
                  ),
                ),
              ),
              buildButton(
                'Design 9',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInNine(),
                  ),
                ),
              ),
              buildButton(
                'Design 10',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInTen(),
                  ),
                ),
              ),
              buildButton(
                'LogIn',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LogIn(),
                  ),
                ),
              ),
              buildButton(
                'Sign Up',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignUp(),
                  ),
                ),
              ),
              buildButton(
                'Meditation',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MeditationScreen(),
                  ),
                ),
              ),
              buildButton(
                'Hotel Booking',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  HotelHomeScreen(),
                  ),
                ),
              ),
              buildButton(
                'Dummy',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  PageTestView(),
                  ),
                ),
              ),*/
              buildButton(
                'Hoofzy',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  HoofzyPage(),
                  ),
                ),
              ),
              buildButton(
                'Hoofzy Page View 1',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  OnBoarding(),
                  ),
                ),
              ),
              buildButton(
                'Hoofzy Page View 2',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>  IntoductionView(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget logo(double height_, double width_) {
    return SvgPicture.asset(
      'assets/logo.svg',
      height: height_,
      width: width_,
    );
  }

  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: fontSize,
          color: const Color(0xFF21899C),
          letterSpacing: 3,
          height: 1.03,
        ),
        children: const [
          TextSpan(
            text: 'HOOFZY ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'UI ',
            style: TextStyle(
              color: Color(0xFFFE9879),
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'KIT',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget buildButton(String txt, BuildContext context, VoidCallback onTap) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: size.height / 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFF21899C),
            ),
          ),
          child: Text(
            txt,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.0,
              color: const Color(0xFF21899C),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
