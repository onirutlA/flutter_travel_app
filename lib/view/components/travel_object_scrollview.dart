import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/travel_object.dart';
import 'package:travel_app/view/screens/detail_screen.dart';

class TravelObjectScrollView extends StatelessWidget {
  final String type;

  const TravelObjectScrollView({required this.type});

  @override
  Widget build(BuildContext context) {
    final List<TravelObject> travelObjectFiltered =
        travelObjects.where((element) => element.type == type).toList();
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: travelObjectFiltered.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final travelObject = travelObjectFiltered[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(travelObject: travelObject),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Hero(
                  tag: travelObject.imagePath,
                  child: Image.asset(
                    travelObject.imagePath,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
