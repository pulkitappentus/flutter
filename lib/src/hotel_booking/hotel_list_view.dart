import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'model/hotel_list_data.dart';

class HotelListView extends StatelessWidget {
  const HotelListView(
      {Key? key,
        this.hotelData,
        this.animationController,
        this.animation,
        this.callback}) : super(key: key);

  final VoidCallback? callback;
  final HotelListData? hotelData;
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
              padding: const EdgeInsets.only(
                  left: 18, right: 24, top: 8, bottom: 16),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage(  hotelData!.imagePath,
                      ),
                    fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.circular(10)

                  ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: callback,
                  child: Padding(
                       padding: const EdgeInsets.only(
                           left: 16, top: 8, bottom: 8),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.end,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 hotelData!.titleTxt,
                                 textAlign: TextAlign.left,
                                 style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                   fontSize: 16,
                                   color: Colors.white
                                 ),
                               ),
                             ],
                           ),
                           Padding(
                             padding:
                             const EdgeInsets.only(top: 4),
                             child: Row(
                               children: <Widget>[
                                 RatingBar(
                                   initialRating:
                                   hotelData!.rating,
                                   direction: Axis.horizontal,
                                   allowHalfRating: true,
                                   itemCount: 5,
                                   itemSize: 24,
                                   ratingWidget: RatingWidget(
                                     full: Icon(
                                       Icons.star_rate_rounded,
                                       color: Colors.white
                                     ),
                                     half: Icon(
                                       Icons.star_half_rounded,
                                       color:  Colors.white
                                     ),
                                     empty: Icon(
                                       Icons
                                           .star_border_rounded,
                                         color: Colors.white
                                     ),
                                   ),
                                   itemPadding:
                                   EdgeInsets.zero,
                                   onRatingUpdate: (rating) {
                                     print(rating);
                                   },
                                 ),
                               ],
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 hotelData!.subTxt,
                                 textAlign: TextAlign.left,
                                 style: TextStyle(
                                     fontWeight: FontWeight.normal,
                                     fontSize: 14,
                                     color: Colors.white
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
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
