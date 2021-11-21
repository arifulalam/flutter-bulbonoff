import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Bulb App',
    home: Bulb(),
    debugShowCheckedModeBanner: false,
  ));
}

class Bulb extends StatefulWidget{
  const Bulb({Key? key}) : super(key: key);

  @override
  _Bulb createState() => _Bulb();
}

class _Bulb extends State<Bulb>{
  bool isBulbOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: (){
          setState(() {
            isBulbOn = !isBulbOn;
          });
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: isBulbOn ? const AssetImage('assets/images/bulbon.png') :
                  const AssetImage('assets/images/bulboff.png'),
                  alignment: Alignment.center,
                  fit: BoxFit.fitWidth,
                ),
                const Text('TAP BULB',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.teal,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}