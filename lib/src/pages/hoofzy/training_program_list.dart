import 'package:flutter/material.dart';
import 'package:login_ui_demo/src/pages/hoofzy/training_program_data.dart';

class TrainingProgramList extends StatelessWidget {
  const TrainingProgramList(
      {Key? key,
        this.traingData,
        this.animationController,
        this.animation,
        this.callback}) : super(key: key);

  final VoidCallback? callback;
  final TrainingProgramData? traingData;
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
          padding: const EdgeInsets.only(left: 12,right: 12,top: 2,bottom: 16),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
               //color: const Color(0xFFFFF4DB),
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(colors: [Color(0xFFFFF6F2), Color(0xFFFFC2A4)],
                    stops: [0.0, 1.0],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    tileMode: TileMode.repeated),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12,top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    traingData!.title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Colors.black
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                          Image.asset('assets/hoofzy/paws.png',width: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              traingData!.skill,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Image.asset('assets/hoofzy/calander.png',width: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 2),
                          child: Text(
                            traingData!.time,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
          ),
        );
      },
    );
  }
}
