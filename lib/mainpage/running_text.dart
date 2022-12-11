import 'package:flutter/material.dart';
import 'package:marquee_text/marquee_direction.dart';
import 'package:marquee_text/marquee_text.dart';
import 'package:marquee_text/vertical_marquee_text.dart';

class RunningText extends StatefulWidget {
  const RunningText({super.key});

  @override
  _RunningTextState createState() => _RunningTextState();
}

class _RunningTextState extends State<RunningText> {
  final List<String> _textList = [
    'Short text.',
    'Long text Long text Long text Long text Long text'
  ];

  var firstTextIndex = 0;
  var secondTextIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                color: Colors.green,
                width: 160,
                child: MarqueeText(
                  text: TextSpan(
                    text: _textList[firstTextIndex],
                  ),
                  speed: 90,
                  textDirection: TextDirection.rtl,
                  marqueeDirection: MarqueeDirection.ltr,
                ),
              ),

              const SizedBox(width: 12),

              /// SecondText
              /// 包含在Expanded中
              Expanded(
                child: Container(
                  color: Colors.pink,
                  child: MarqueeText(
                    text: TextSpan(
                      text: _textList[secondTextIndex],
                    ),
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                    marqueeDirection: MarqueeDirection.ltr,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  color: Colors.green,
                  child: const Text(
                    'ChangeFirstText',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      firstTextIndex = 1 - firstTextIndex;
                    });
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: MaterialButton(
                  color: Colors.pink,
                  child: const Text(
                    'ChangeSecondText',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      secondTextIndex = 1 - secondTextIndex;
                    });
                  },
                ),
              ),
            ],
          ),
          Container(
            color: Colors.green,
            width: 160,
            height: 100,
            // height: 400,
            child: const VerticalMarqueeText(
              marqueeDirection: MarqueeDirection.btt,
              textAlign: TextAlign.center,
              // alwaysScroll: true,
              text: TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: '''Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
''',
                  ),
                  TextSpan(
                    text: '''Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!
Hello,Flutter!''',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              speed: 30,
            ),
          ),
        ],
      ),
    );
  }
}
