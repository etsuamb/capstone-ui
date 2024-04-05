import 'package:flutter/material.dart';

import 'components/resuable_Textfiled.dart';
import 'components/reusable_Daycard.dart';
import 'components/reusable_Timecard.dart';
import 'constants.dart';
void main() {
  runApp(BookingPage());
}
String? month;
class BookingPage extends StatefulWidget {
  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  String? activeDay;
  String? activeTime;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(128, 128, 128, 0.1)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                            ),
                            iconSize: 30,
                          ),
                        ),
                      ),
                      Text(
                        'Booking',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ReusableTextField(
                    name: 'User name',
                    hint: 'User name',
                  ),
                  SizedBox(height: 20),
                  ReusableTextField(
                    name: 'Category',
                    hint: 'Select category',
                    categories: categories,
                  ),
                  SizedBox(height: 20),
                  ReusableTextField(
                    name: 'Description',
                    hint:
                        'Psychology is the study of the mind and behavior. It explores how people think, feel, and act, and seeks to understand both normal and abnormal behavior.',
                    lineNumber: 5,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Choose time',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: Color(0xFF8F92A1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Date',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Row(
                          children: [
                            Text(
                              month ?? 'January',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                           
                            
                              PopupMenuButton(
                                icon: Icon(Icons.keyboard_arrow_down),
                                itemBuilder: (BuildContext context) {
                                  return months.map((String item) {
                                    return PopupMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList();
                                },
                                onSelected: (String selectedItem) {
                                  setState(() {
                                    month = selectedItem;
                                  });
                                },
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ReusableDayCard(
                            days: 'Mon',
                            dateNumber: '18',
                            cardColor: activeDay == 'Mon'
                                ? activeDateCardColor
                                : inactiveCardColor,
                            onTap: () {
                              setState(() {
                                activeDay = 'Mon';
                              });
                            },
                          ),
                          SizedBox(width: 20),
                          ReusableDayCard(
                            days: 'Tue',
                            dateNumber: '19',
                            cardColor: activeDay == 'Tue'
                                ? activeDateCardColor
                                : inactiveCardColor,
                            onTap: () {
                              setState(() {
                                activeDay = 'Tue';
                              });
                            },
                          ),
                          SizedBox(width: 20),
                          ReusableDayCard(
                            days: 'Wed',
                            dateNumber: '18',
                            cardColor: activeDay == 'Wed'
                                ? activeDateCardColor
                                : inactiveCardColor,
                            onTap: () {
                              setState(() {
                                activeDay = 'Wed';
                              });
                            },
                          ),
                          SizedBox(width: 20),
                          ReusableDayCard(
                            days: 'Thu',
                            dateNumber: '18',
                            cardColor: activeDay == 'Thu'
                                ? activeDateCardColor
                                : inactiveCardColor,
                            onTap: () {
                              setState(() {
                                activeDay = 'Thu';
                              });
                            },
                          ),
                          SizedBox(width: 20),
                          ReusableDayCard(
                            days: 'Fri',
                            dateNumber: '18',
                            cardColor: activeDay == 'Fri'
                                ? activeDateCardColor
                                : inactiveCardColor,
                            onTap: () {
                              setState(() {
                                activeDay = 'Fri';
                              });
                            },
                          ),
                          SizedBox(width: 20),
                          ReusableDayCard(
                            days: 'Sat',
                            dateNumber: '18',
                            cardColor: activeDay == 'Sat'
                                ? activeDateCardColor
                                : inactiveCardColor,
                            onTap: () {
                              setState(() {
                                activeDay = 'Sat';
                              });
                            },
                          ),
                          SizedBox(width: 20),
                          ReusableDayCard(
                            days: 'Sun',
                            dateNumber: '18',
                            cardColor: activeDay == 'Sun'
                                ? activeDateCardColor
                                : inactiveCardColor,
                            onTap: () {
                              setState(() {
                                activeDay = 'Sun';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Time',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReusableTimeCard(
                        text: '10:00pm',
                        cardColor: activeTime == '10:00pm'
                            ? activeTimeCardColor
                            : inactiveCardColor,
                        onTap: () {
                          setState(() {
                            activeTime = '10:00pm';
                          });
                        },
                      ),
                      ReusableTimeCard(
                        text: '11:00pm',
                        cardColor: activeTime == '11:00pm'
                            ? activeTimeCardColor
                            : inactiveCardColor,
                        onTap: () {
                          setState(() {
                            activeTime = '11:00pm';
                          });
                        },
                      ),
                      ReusableTimeCard(
                        text: '12:00pm',
                        cardColor: activeTime == '12:00pm'
                            ? activeTimeCardColor
                            : inactiveCardColor,
                        onTap: () {
                          setState(() {
                            activeTime = '12:00pm';
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReusableTimeCard(
                        text: '13:00pm',
                        cardColor: activeTime == '13:00pm'
                            ? activeTimeCardColor
                            : inactiveCardColor,
                        onTap: () {
                          setState(() {
                            activeTime = '13:00pm';
                          });
                        },
                      ),
                      ReusableTimeCard(
                        text: '14:00pm',
                        cardColor: activeTime == '14:00pm'
                            ? activeTimeCardColor
                            : inactiveCardColor,
                        onTap: () {
                          setState(() {
                            activeTime = '14:00pm';
                          });
                        },
                      ),
                      ReusableTimeCard(
                        text: '15:00pm',
                        cardColor: activeTime == '15:00pm'
                            ? activeTimeCardColor
                            : inactiveCardColor,
                        onTap: () {
                          setState(() {
                            activeTime = '15:00pm';
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 65,
                    width: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF50A9E2),
                    ),
                    child: TextButton(
                      onPressed: () {
                        _showSuccessDialog(context);
                      },
                      child: Text(
                        'Book Now',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



void _showSuccessDialog(BuildContext context) {
  bool _isConfirmed = false;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                    "Your booking has been successfully completed!\n The Psychiatrist will reach you out soon!")),
            SizedBox(height: 16.0),
            Row(
              children: [],
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BookingPage()),
              );
            },
          ),
        ],
      );
    },
  );
}
