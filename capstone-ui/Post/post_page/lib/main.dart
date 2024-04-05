import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(PostPage());
}

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: 
        Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('Images/post.png'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('Reflla Mendes',
                  style: TextStyle(fontSize: 20),
                  ),
                  Text('AASTU, 1 day ago',
                  style: TextStyle(
                    color: Color(0xFFC9C9C9)
                  ),
                  )
                ],)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
