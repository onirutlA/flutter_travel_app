import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: Image.asset('images/users/user.jpg'),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, left: 10),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontFamily: 'Montserrat-Regular',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8, left: 10),
                child: Text(
                  'Sergio De Paula',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat-Regular',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
