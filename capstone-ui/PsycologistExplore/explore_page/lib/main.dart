import 'package:flutter/material.dart';
import 'components/Psychologist_page.dart';
import 'components/reusable_psychiatrist.dart';
import 'constants.dart';
void main() {
  runApp(PsychologyExplore());
}

class PsychologyExplore extends StatefulWidget {
  const PsychologyExplore({Key? key}) : super(key: key);

  @override
  _PsychologyExploreState createState() => _PsychologyExploreState();
}

class _PsychologyExploreState extends State<PsychologyExplore> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Psychologist',
                  style: largeTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Meet your freedom',
                  style: smallTextStyle,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFF7FBFD),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What do you need ?',
                      border: InputBorder.none,
                      hintStyle: smallTextStyle,
                      contentPadding: EdgeInsets.only(left: 15, top: 10),
                      suffixIcon: Container(
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF3398DB),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Top Rated',
                  style: largeTextStyle,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    ReusablePsychatrist(),
                    SizedBox(
                      width: 20,
                    ),
                    ReusablePsychatrist(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'All',
                  style: largeTextStyle,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    ReusablePsychatrist(),
                    SizedBox(width: 20),
                    ReusablePsychatrist()
                  ],
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
        bottomNavigationBar: Builder(
          builder: (context) => BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (int index) {
              if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PsychologistPage()),
                );
              }
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedItemColor: Color(0xFF5182FF),
            iconSize: 35,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            unselectedItemColor: Color(0xFF8F92A1),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Meet',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}




