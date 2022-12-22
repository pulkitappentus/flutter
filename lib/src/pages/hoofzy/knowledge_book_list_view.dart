import 'package:flutter/material.dart';
import 'package:login_ui_demo/src/pages/hoofzy/knowledge_program_list.dart';

class KnowledgeBookListView extends StatelessWidget {
  const KnowledgeBookListView(
      {Key? key,
        this.knowledgeList,
        this.animationController,
        this.animation,
        this.callback}) : super(key: key);

  final VoidCallback? callback;
  final KnowledgeProgramData? knowledgeList;
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
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: ClipRRect(
                        child: Image.asset(knowledgeList!.image,width: 70,height: 70,fit: BoxFit.cover,),
                        borderRadius: BorderRadius.circular(80)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(knowledgeList!.title),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
