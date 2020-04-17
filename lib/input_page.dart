import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardBackgroundColor = 0xFF101E33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: Color(cardBackgroundColor),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: Color(cardBackgroundColor),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(
              color: Color(cardBackgroundColor),
            ),
          ),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  color: Color(cardBackgroundColor),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: Color(cardBackgroundColor),
                ),
              ),
            ],
          )),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
