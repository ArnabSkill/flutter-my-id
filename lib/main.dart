import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(

  home: idapp() ,
  debugShowCheckedModeBanner: false;
));
class idapp extends StatefulWidget {
  @override
  State<idapp> createState() => _idappState();
}

class _idappState extends State<idapp> {
  // const idapp({Key? key}) : super(key: key);
  int experience=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[800],
      appBar: AppBar(
        title: Text('My Id App'),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 10,
      ),
      floatingActionButton:FloatingActionButton(
          onPressed: () {
            setState(() {
              experience++;
            });
          },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img.png'),
                radius: 50,
                backgroundColor: Colors.green,
                // backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
              ),
            ),
            // SizedBox(height: 20),
            Divider(
              height: 100,
              color: Colors.green,
            ),
            Text(
              'Name ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                // fontFamily:'Baloobhai2',
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'ARNAB SADHUKHAN',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                // fontFamily:'Baloobhai2',
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Stream ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                // fontFamily:'Baloobhai2',
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'BTECH ',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                // fontFamily:'Baloobhai2',
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Experience ',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                // fontFamily:'Baloobhai2',
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '$experience ',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                // fontFamily:'Baloobhai2',
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5),
                Text(
                  ' iammariner89@gmail.com',
                  style: TextStyle(
                    fontSize: 15,
                    letterSpacing: 1,
                    color: Colors.green
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




