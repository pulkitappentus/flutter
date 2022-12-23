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

class HoofzyPage extends StatefulWidget{

  const HoofzyPage({Key? key}) : super(key: key);

  @override
  _HoofzyPageState createState() => _HoofzyPageState();

}

class _HoofzyPageState extends State<HoofzyPage> with TickerProviderStateMixin {
  AnimationController? animationController;
  List<HotelListData> hotelList = HotelListData.hotelList;
  List<TrainingProgramData> trainingList = TrainingProgramData.hotelList;
  List<KnowledgeProgramData> knowledgeList = KnowledgeProgramData.knowledgeList;
  List<KnowledgeDramaList> knowledgeDramaList = KnowledgeDramaList.knowledgeDramaList;
  final ScrollController _scrollController = ScrollController();

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

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
      color: HoofzyDesignAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            getAppBarUI(context),
            Expanded(
              //height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    upcomingScheduleHeading("Upcoming Schedule"),
                    upcomingScheduleHeading2("Train your pet"),
                    upcomingEventList(context),
                    upcomingScheduleHeading("Training Program"),
                    upcomingScheduleHeading2("Train your pet"),
                    SizedBox(
                      height: 224,
                      child: ListView.builder(
                        itemCount: trainingList.length,
                        padding: const EdgeInsets.only(top: 8),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final int count =
                          trainingList.length > 10 ? 10 : trainingList.length;
                          final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                              CurvedAnimation(
                                  parent: animationController!,
                                  curve: Interval(
                                      (1 / count) * index, 1.0,
                                      curve: Curves.fastOutSlowIn)));
                          animationController?.forward();
                          return Container(
                            width: 200,
                            child: TrainingProgramList(
                              callback: () {},
                              traingData: trainingList[index],
                              animation: animation,
                              animationController: animationController!,
                            ),
                          );
                        },
                      ),
                    ),
                    upcomingScheduleHeading("Offline Training"),
                    upcomingScheduleHeading2("Train your pet"),
                    SizedBox(
                      height: 224,
                      child: ListView.builder(
                        itemCount: hotelList.length,
                        padding: const EdgeInsets.only(top: 8),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final int count =
                          hotelList.length > 10 ? 10 : hotelList.length;
                          final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                              CurvedAnimation(
                                  parent: animationController!,
                                  curve: Interval(
                                      (1 / count) * index, 1.0,
                                      curve: Curves.fastOutSlowIn)));
                          animationController?.forward();
                          return Container(
                            width: 200,
                            child: HotelListView(
                              callback: () {},
                              hotelData: hotelList[index],
                              animation: animation,
                              animationController: animationController!,
                            ),
                          );

                        },
                      ),
                    ),
                    upcomingScheduleHeading("Knowledge Book"),
                    upcomingScheduleHeading2("Pet's related articals"),
                    SizedBox(
                      height: 116,
                      child: ListView.builder(
                        itemCount: knowledgeList.length,
                        padding: const EdgeInsets.only(top: 8),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final int count =
                          knowledgeList.length > 10 ? 10 : knowledgeList.length;
                          final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                              CurvedAnimation(
                                  parent: animationController!,
                                  curve: Interval(
                                      (1 / count) * index, 1.0,
                                      curve: Curves.fastOutSlowIn)));
                          animationController?.forward();
                          return Container(
                            width: 95,
                            child: KnowledgeBookListView(
                              callback: () {},
                              knowledgeList: knowledgeList[index],
                              animation: animation,
                              animationController: animationController!,
                            ),
                          );

                        },
                      ),
                    ),
                    SizedBox(
                      height: 224,
                      child: ListView.builder(
                        itemCount: hotelList.length,
                        padding: const EdgeInsets.only(top: 8),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final int count =
                          hotelList.length > 10 ? 10 : hotelList.length;
                          final Animation<double> animation =
                          Tween<double>(begin: 0.0, end: 1.0).animate(
                              CurvedAnimation(
                                  parent: animationController!,
                                  curve: Interval(
                                      (1 / count) * index, 1.0,
                                      curve: Curves.fastOutSlowIn)));
                          animationController?.forward();
                          return Container(
                            width: 185,
                            child: KnowledgeDramaListView(
                              callback: () {},
                              hotelData: hotelList[index],
                              animation: animation,
                              animationController: animationController!,
                            ),
                          );

                        },
                      ),
                    ),
                    upcomingScheduleHeading("Services"),
                    upcomingScheduleHeading2("Provide your pet with the best services"),
                    servicesList(context),
                    /*BottomBarView(
                      tabIconsList: tabIconsList,
                      addClick: () {},
                      changeIndex: (int index) {
                        if (index == 0 || index == 2) {
                          animationController?.reverse().then<dynamic>((data) {
                            if (!mounted) {
                              return;
                            }
                          });
                        } else if (index == 1 || index == 3) {
                          animationController?.reverse().then<dynamic>((data) {
                            if (!mounted) {
                              return;
                            }
                          });
                        }
                      },
                    ),*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget upcomingEventList(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12,right: 12,top: 2),
    child: Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(colors: [Color(0xFFFFF4DB), Color(0xFFFFCD57B)],
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("King Vaccination",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black
                    ),
                  ),
                  Text("16 Fri 11:30 Am",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black
                    ),)
                ],
              ),
            ),
            const Text(
                "Megavac 7",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: Colors.black
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(
                  "Home pet care clinic..Jaipur",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget servicesList(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 12,right: 12,top: 2,bottom: 18),
    child: Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(0xFFCAC2FF),
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [Color(0xFFCAC2FF), Color(0xFFF2E7F8)],
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              tileMode: TileMode.repeated)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
                "Find Expert for \nConsultation",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                  "Expert advice for pet's",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}


Widget offlineTrainingList(List<HotelListData> hotelList, AnimationController animationController) {
  return ListView.builder(
    itemCount: hotelList.length,
    padding: const EdgeInsets.only(top: 8),
    scrollDirection: Axis.vertical,
    itemBuilder: (BuildContext context, int index) {
      final int count =
      hotelList.length > 10 ? 10 : hotelList.length;
      final Animation<double> animation =
      Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
              parent: animationController!,
              curve: Interval(
                  (1 / count) * index, 1.0,
                  curve: Curves.fastOutSlowIn)));
      animationController?.forward();
      return HotelListView(
        callback: () {},
        hotelData: hotelList[index],
        animation: animation,
        animationController: animationController!,
      );
    },
  );
}

Widget upcomingScheduleHeading(String arg1) {
  return Padding(
    padding: const EdgeInsets.only(left: 20,right: 20,top: 36),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(arg1,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFF2D3455)
          ),
        ),
        const Text("See All",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Colors.black
          ),
        ),
      ],
    )
  );
}

Widget upcomingScheduleHeading2(String arg1) {
  return Padding(
    padding: const EdgeInsets.only(left: 20,top: 12,bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(arg1,
          style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Color(0xFF2D3455)
          ),
        ),
      ],
    )
  );
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




