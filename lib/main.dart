import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Count(),

));


class Count extends StatefulWidget {
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('MY COUNTER APP'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('INCREMENT = UP BUTTON DECREMENT = DOWN BUTTON',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                )
            ),
            SizedBox(height: 100.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:Colors.amberAccent,
              ),
              onPressed: () {
                setState(() {
                  value++;
                });
              },
              child: Text('UP',
                  style: TextStyle(
                    backgroundColor: Colors.amberAccent,
                    fontSize: 18.0,
                  )
              ),
            ),
            SizedBox(height: 40.0),

            Text('$value',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,

                )
            ),
            SizedBox(height: 40.0),

            ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary:Colors.amberAccent,
            ),
              onPressed: () {
                setState(() {
                  value--;
                });
              },
              child: Text('DOWN',
                  style: TextStyle(
                    fontSize: 18.0,
                  )
              ),

            )
          ],


        ),

      ),
    );
  }
}
