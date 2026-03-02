import 'package:flutter/material.dart';

void main() {
  runApp(Pointscounter());
}

class Pointscounter extends StatefulWidget {
  @override
  State<Pointscounter> createState() => _PointscounterState();
}

class _PointscounterState extends State<Pointscounter> {
  int pointsA = 0;

  int pointsB = 0;

  void addOnePoint() {
    debugPrint(' add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('points counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 36),
                    ),
                    Text(
                      '$pointsA',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          pointsA++;
                        });
                        debugPrint('$pointsA');
                        addOnePoint();
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          pointsA += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          pointsA += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),

                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 36),
                    ),
                    Text(
                      '$pointsB',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          pointsB++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          pointsB += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          pointsB += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(
              flex: 3,
            ),
            SizedBox(
              height: 40,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {setState(() {
                pointsA = 0;
                pointsB = 0;
              });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
// update language stats
