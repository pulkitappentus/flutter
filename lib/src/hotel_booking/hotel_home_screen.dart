/*
import 'package:flutter/material.dart';
import 'model/hotel_list_data.dart';

class HotelHomeScreen extends StatefulWidget{
  @override
  _HotelHomeScreenState createState() => _HotelHomeScreenState();

}

class _HotelHomeScreenState extends State<HotelHomeScreen> with TickerProviderStateMixin {
  AnimationController? animationController;
  List<HotelListData> hotelList = HotelListData.hotelList;
  final ScrollController _scrollController = ScrollController();

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

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
  Widget build(BuildContext context) {

  }

}
*/
