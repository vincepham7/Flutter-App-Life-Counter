import 'package:flutter/material.dart';

class LifeCounter extends StatefulWidget {
  @override
  _LifeCounterState createState() => _LifeCounterState();
}

class _LifeCounterState extends State<LifeCounter> {
  int _lifeCount = 20;

  void _incrementLifeCount() {
    setState(() {
      _lifeCount++;
    });
  }

  void _decrementLifeCount() {
    setState(() {
      _lifeCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Life Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Life Count:',
            style: TextStyle(fontSize: 24.0),
          ),
          Text(
            '$_lifeCount',
            style: TextStyle(fontSize: 64.0),
          ),
          SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: _incrementLifeCount,
              ),
              SizedBox(width: 24.0),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: _decrementLifeCount,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LifeCounter(),
  ));
}
