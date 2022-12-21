import 'package:flutter/material.dart';
import '../hotel_booking/hotel_app_theme.dart';
import '../hotel_booking/hotel_list_view.dart';
import '../hotel_booking/model/hotel_list_data.dart';

class HoofzyPage extends StatefulWidget{

  const HoofzyPage({Key? key}) : super(key: key);

  @override
  _HoofzyPageState createState() => _HoofzyPageState();

}

class _HoofzyPageState extends State<HoofzyPage> with TickerProviderStateMixin {
  AnimationController? animationController;
  List<HotelListData> hotelList = HotelListData.hotelList;
  final ScrollController _scrollController = ScrollController();

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
    return Theme(
      data: HotelAppTheme.buildLightTheme(),
      child: Container(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Column(
                  children: <Widget>[
                    getAppBarUI(context),
                    Expanded(
                      child: NestedScrollView(
                        controller: _scrollController,
                        headerSliverBuilder:
                            (BuildContext context, bool innerBoxIsScrolled) {
                          return <Widget>[
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int index) {
                                    return Column(
                                      children: <Widget>[


                                      ],
                                    );
                                  }, childCount: 1),
                            )
                          ];
                        },
                        body: Container(

                          decoration: BoxDecoration(
                            color: HotelAppTheme.buildLightTheme().backgroundColor,
                            borderRadius: const BorderRadius.all(Radius.circular(16.0)),

                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              upcomingScheduleHeading("Upcoming Schedule"),
                              upcomingScheduleHeading2("Train your pet"),
                              upcomingScheduleHeading("Training Program"),
                              upcomingScheduleHeading2("Train your pet"),
                              //Image.asset('assets/introduction_animation/welcome.png',height: 250,width: 350, fit: BoxFit.fill),
                              upcomingScheduleHeading("Offline Training"),
                              upcomingScheduleHeading2("Train your pet"),
                              //offlineTrainingList(hotelList,animationController!)
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
                              )
                            ],
                          ),
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
    );
  }
  
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
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFF2D3455)
          ),
        ),
        Text("See All",
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
          style: TextStyle(
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
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 18, right: 18),
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
                  child: Image.asset('assets/hoofzy/profile.png',width: 36,height: 36,fit: BoxFit.fill,)
                ),
              ),
            ),
          ),
          Expanded(
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




