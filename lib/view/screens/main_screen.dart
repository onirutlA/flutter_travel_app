import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/view/components/travel_object_scrollview.dart';
import 'package:travel_app/view/components/user_profile.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserProfile(),
                SizedBox(height: 16),
                Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontFamily: 'Montserrat-Bold',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Mountain',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TravelObjectScrollView(type: 'mountain'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Beach',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TravelObjectScrollView(type: 'beach'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Landscape',
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                TravelObjectScrollView(type: 'landscape'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
