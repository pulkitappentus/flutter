import 'package:flutter/material.dart';
import 'package:login_ui_demo/src/pages/hoofzy/introduction_screen/introduction_1.dart';
import 'package:login_ui_demo/src/pages/hoofzy/introduction_screen/introduction_2.dart';

class IntoductionView extends StatefulWidget{

  const IntoductionView({Key? key}) : super(key: key);

  @override
  _IntoductionViewState createState() => _IntoductionViewState();

}

class _IntoductionViewState extends State<IntoductionView> {

  PageController controller=PageController();
  List<Widget> _list=<Widget>[
    new Center(child:new Introduction1()),
    new Center(child:new Introduction2()),
    new Center(child:new Introduction1())
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