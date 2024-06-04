import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'package:google_fonts/google_fonts.dart';

class GetStart extends StatefulWidget {
  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  final PageController _controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller:_controller ,
              children:[

                    builContainer(
                        child1: Image.asset('assess/images/Digital Sketches_prev_ui.png',
                        height: 600, width: 500,),
                        text1: 'Start Journey',
                        text2: ' With Nike',
                        text3: ' Smart, Gorgeous & Fashionable',
                        text4: 'Collection',
                        text5: 'Get Started',),
                builContainer(
                  child1: Stack(
                    children: [
                      Image.asset('assess/images/81a48fdfedf49d08648513dc1826f8f2_prev_ui 1.png',
                      height: 600, width: 500,),
                      Positioned(
                        top: 250,
                          right:70,
                          child: Image.asset('assess/images/Ellipse 907.png')),
                  ]),
                  text1: 'Follow Latest',
                  text2: ' Style Shoes',
                  text3: ' There Are Many Beautiful And',
                  text4: 'Attractive Plants To Your Room',
                  text5: 'Next',),
                builContainer(
                  child1: Image.asset('assess/images/Spring_prev_ui 1.png',
                    height: 600, width: 500,),
                  text1: 'Summer Shoes',
                  text2: ' Nike 2022',
                  text3: ' Amet Minim Lit Nodeseru Saku',
                  text4: 'Nandu Sit Alique Dolor',
                  text5: 'Next',),

            ],
            ),
          ),

        ],
      ),
    );
  }

  Widget builContainer({required Widget child1,
    required String text1,required String text2 ,required String text3,
  required String text4,required String text5}) {
    return Stack(
      children: [
        Positioned(
          top: 200,
          left: 80,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.blue[100],
          ),
        ),
        Positioned(
          left: 20,
          top: 200,
          child: Container(
            width: 500,
            height: 500,
            child: Text('NIKE',style: TextStyle(
              fontSize: 170,
              color: Colors.black12,
            fontWeight: FontWeight.bold),)
          ),
        ),
        Positioned(
          right: 0.05,
          top: 100,
          child: Container(
            width: 500,
            height: 500,
            child: child1,
          ),
        ),
        Positioned(
          top: 500,
          left: 20,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.blue[100],
          ),
        ),
        Positioned(
          top: 450,
          right: 30,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.blue[100],
          ),
        ),
        Positioned(
          top: 530,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text3,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    text4,

                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    padding:  EdgeInsets.symmetric(vertical: 16),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 16,
                        activeDotColor: Colors.blue[200]!,
                      ),
                    ),
                  ),
                  SizedBox(width: 150,),
                  ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(150, 50)),
                      backgroundColor: MaterialStatePropertyAll(Colors.blue[200]),
                    ),
                    onPressed: () {
                      // Define your action here
                    },
                    child: Text(
                      text5,
                      style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
