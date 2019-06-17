import 'package:flutter/material.dart';
import 'package:frieght_bro/search_destination.dart';
import 'package:frieght_bro/search_origin.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frieght Bro'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(1.0),
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                navigateToOrigin(context);
              },
              child: Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Text('A',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.red,
                                fontWeight: FontWeight.w800)),
                        Container(width: 8.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Origin Port',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black38),
                              textAlign: TextAlign.end,
                            ),
                            Container(height: 4.0),
                            Text(
                              'INNSA',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                              textAlign: TextAlign.start,
                            ),
                            Container(height: 4.0),
                            Text('Jawaharlal Nehru, IN',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                navigateToDestination(context);
              },
              child: Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Text('B',
                            style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.greenAccent,
                                fontWeight: FontWeight.w800)),
                        Container(width: 8.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Destination Port',
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.black38),
                                textAlign: TextAlign.end),
                            Container(height: 4.0),
                            Text('DEHAM',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start),
                            Container(height: 4.0),
                            Text('Port Of Hamburg, GY',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/images/calendar.png',
                            width: 50.0, height: 50.0),
                        Container(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Sailing Date',
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.black38),
                                textAlign: TextAlign.start),
                            Container(height: 4.0),
                            Text('12 Jan',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                                textAlign: TextAlign.start),
                            Container(height: 4.0),
                            Text('2019',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Card(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('assets/images/add.png',
                            width: 50.0, height: 50.0),
                        Container(height: 10.0),
                        Text('Additional Services',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future navigateToOrigin(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => OriginPort()));
}

Future navigateToDestination(BuildContext context) async {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => DestinationPort()));
}
