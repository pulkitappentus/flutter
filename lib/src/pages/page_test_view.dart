import 'package:flutter/material.dart';

class PageTestView extends StatefulWidget{

  @override
  _PageTestViewState createState() => _PageTestViewState();

}

class _PageTestViewState extends State<PageTestView>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Hello",textAlign: TextAlign.start),

                Text("Hello",textAlign: TextAlign.start)

              ],
            ),
          ),

        ),
      ),
    );
  }

}