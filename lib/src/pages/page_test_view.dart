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
                Text("Hello",
                    textAlign: TextAlign.start),
                Text("Hello",textAlign: TextAlign.start),
                buildCard()
              ],
            ),
          ),

        ),
      ),
    );
  }

  buildCard() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          height: size.height/12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFF21899C)
            )
          ),
          child: Text(
            "Button"
          ),

        ),

      ),

    );
  }

}