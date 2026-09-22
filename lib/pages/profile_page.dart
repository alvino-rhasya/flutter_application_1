import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network('https://thumb.wikimedia.org/wikipedia/commons/thumb/7/79/Flutter_logo.svg/250px-Flutter_logo.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail'),
        title: Text(
          'Profile', 
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 20.0, 
            fontFamily: GoogleFonts.poppins().fontFamily),),
        actions: [
          Icon(Icons.settings),
          CircleAvatar(
            backgroundImage: AssetImage('assets/foto.jpeg'),
            minRadius: 50,
            maxRadius: 50,
          )
        ],
      ),
      body: Column(
        children: [
          // section 1 (Icon/Mode Panduan Widget / Sembunyikan Tag)
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.handyman_sharp, color: Colors.white,),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Text(
                      'Mode Panduan Widget', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 14.0, 
                        fontFamily: GoogleFonts.poppins().fontFamily
                        ),
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.remove_red_eye, color: Colors.blueAccent),
                        Text(
                          'Sembunyikan Tag', 
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold, 
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          // section 2 (Column > Circle Avatar)
          Container(
            width: 230,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Row(
              children: [
                Icon(Icons.mode_fan_off_outlined, color: Colors.white,),
                SizedBox(width: 8.0,),
                Text(
                  'Column > Circle Avatar', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontFamily: GoogleFonts.poppins().fontFamily
                    ),
                  ),
              ],
            ),
          ),
          //section 3
          SizedBox(height: 10,),
          CircleAvatar(
            minRadius: 50,
            maxRadius: 50,
            backgroundImage: AssetImage('assets/foto.jpeg'),
          ),
          Text(
            'Rizky Ramadhan', 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 28.0
              ),
            ),
          Text(
              'Junior Flutter Developer', 
              style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(3.0),
                width: 185,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.flutter_dash, size: 25,),
                  SizedBox(width: 3,),
                  Text(
                    'Dart & Widget Learner', 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      color: Colors.white
                      ),
                    ),
                ],
              ),
        ],
      ),
    );
  }
}