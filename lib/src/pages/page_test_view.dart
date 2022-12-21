import 'package:flutter/material.dart';
import 'package:login_ui_demo/src/pages/sign_in_3.dart';

class PageTestView extends StatefulWidget{

  @override
  _PageTestViewState createState() => _PageTestViewState();

}

class _PageTestViewState extends State<PageTestView>{
  var valuefirst = false;
  var valuesecond = false;
  var valuethird = false;
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
                buildButton(),
                buildImage(),
                buildImageRow(),
                checkboxes("Flutter",0),
                checkboxes("Java",1),
                checkboxes("Kotlin",2),
              ],
            ),
          ),

        ),
      ),
    );
  }

  buildButton() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
      child: InkWell(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SignInThree(),
          ),
        ),
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

  buildImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
      child: Column(
        children: <Widget>[
          Image.asset(
              'assets/introduction_animation/welcome.png',
               width: 150,
               height: 150,
               fit: BoxFit.fill,
          ),
          Text("About image"),
        ],
      ),
    );
  }

  buildImageRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/introduction_animation/welcome.png',width: 40,height: 40,fit: BoxFit.fill,),
          Text("Another Image")
        ],

      ),
    );

  }

  checkboxes(String s, int valu) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 16,top: 6),
      child: Row(
        children: <Widget>[
          Checkbox(
            checkColor: Colors.greenAccent,
            activeColor: Colors.red,
            value: this.valuefirst,
            onChanged: (bool? value) {
              setState(() {
                if(valu == 0){
                  this.valuefirst = value!;
                }
                else if(valuesecond = value!){
                  this.valuesecond = value!;
                }
                else{
                  this.valuethird = value!;
                }

              });
            },
          ),
          Text(s)
        ],
      ),

    );
  }

}