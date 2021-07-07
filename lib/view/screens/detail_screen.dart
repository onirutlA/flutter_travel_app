import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/travel_object.dart';
import 'package:travel_app/view/components/favorite_button.dart';

class DetailScreen extends StatelessWidget {
  final TravelObject travelObject;

  DetailScreen({required this.travelObject});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.35,
                child: Stack(
                  children: [
                    Container(
                      height: size.width,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                        child: Hero(
                          tag: travelObject.imagePath,
                          child: Image(
                            image: AssetImage(travelObject.imagePath),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            iconSize: 24,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                          FavoriteButton()
                        ],
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      bottom: 15.0,
                      child: Column(
                        children: [
                          Text(
                            travelObject.name,
                            style: TextStyle(
                              fontFamily: 'Montserrat-Bold',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 16),
                child: Text(
                  'Description',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat-Bold',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  travelObject.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Montserrat-Regular',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
