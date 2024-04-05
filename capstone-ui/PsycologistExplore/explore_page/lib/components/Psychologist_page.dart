import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../constants.dart';
import 'reusable_icons.dart';
void main() => runApp(MaterialApp(home: PsychologistPage()));
class PsychologistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Color(0xFF50A9E2),
                ),
                Positioned(
                  top: 100,
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.transparent,
                        ),
                        Transform.translate(
                          offset: Offset(0, 50),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage('Images/psychology.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                height: 60), 
            Text(
              'Esther Jhon',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Psychiatrist',
              style: smallTextStyle),
            SizedBox(height: 2),
            ReusableStar(),
            SizedBox(height: 30,),
           Container(
  height: 10,
  child: Stack(
    children: [
      Positioned.fill(
        bottom: -10,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Color(0xFF50A9E2),
            ),
          ),
        ),
      ),
      Center(
        child: Container(
          height: 0,
          width: double.infinity,
          color: Colors.blue,
        ),
      ),
    ],
  ),
),


            SizedBox(height: 25),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                ),
                Text(
                  'About',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 60),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Dr. Lisa Wong: Compassionate psychiatrist specializing in anxiety and depression, offering holistic treatment blending therapy and medication for mental wellness.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFF50A9E2)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 50,
                        width: 4,
                        color: Color(0xFF50A9E2),
                      ),
                    ),
                    SizedBox(width: 30),
                    Text('example@gmail.com'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF50A9E2),
                borderRadius: BorderRadius.circular(15),
              ),
              width: 150,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Book Now',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}


