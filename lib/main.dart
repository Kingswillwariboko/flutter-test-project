import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                    width: constraints.maxWidth, height: constraints.maxHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(
                          'https://img.freepik.com/free-photo/man-driving-car-from-rear-view_1359-494.jpg?t=st=1689589409~exp=1689590009~hmac=1e432464b1133fe7eec249c0440fe5f26d9d655bb183b081dd9917c360c9627c'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        Text('Umo', style: TextStyle(
                            fontSize: 100,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                               ..shader = LinearGradient(
                                   colors: [Colors.white, Colors.green],
                                   begin: Alignment.topCenter,
                                   end: Alignment.bottomCenter,
                               ).createShader(Rect.fromLTWH(20, 0, 100, 24)),
                        ),),
                        Text('gdzie jedisbdbfn dzisiaj',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),

                        SizedBox(
                         height: 600,
                        ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.lightGreen, Colors.green],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: TextButton(
                              onPressed: () {
                                print('I have been pressed');
                              },
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                              ),
                              child: Text('Zaloguj się'),
                            ),
                          ),
                        ),
                      )
                      ],
                    )
                );
              },
            ),
          )
      ),
    );
  }
}