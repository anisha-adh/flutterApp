
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var spacing=SizedBox(height: 20,width: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack Example'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            // Background Image
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              width: 800,
              height: 700,
              fit: BoxFit.cover,
            ),
            // Semi-transparent Container
            /*
            Container(
              width: 300,
              height: 300,
              color: Colors.black.withOpacity(0.5),
            ), */
            // Text
            const Positioned(
              top: 20,
              left: 20,
              child: Text(
                'Owl',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.green
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Task1-Column Number: 1", 
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.green
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Task1-Column Number: 2", 
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 260,
              left: 20,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.green
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Task1-Column Number: 3", 
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),

            //adding row in the first column
            Positioned(
              top:380,
              left: 20,
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  color:Colors.pink),
                  child: const Padding(padding: 
                  EdgeInsets.all(8.0),
                  child: Text(
                    "Task Row Number: 1",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  ),
                ),
                spacing, // Space between rows
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                child: const Padding(padding: EdgeInsets.all(8.0),
                  child: Text("Task Row Number: 2",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                ),
                  ),
              ],
              ),

            ),
          ],
          
        ),
      ),
    );
  }
}