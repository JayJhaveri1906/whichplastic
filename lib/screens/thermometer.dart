import 'package:flutter/material.dart';
import 'package:whatplastic/svg/contants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Thermometer extends StatefulWidget {
  @override
  _ThermometerState createState() => _ThermometerState();
}

class _ThermometerState extends State<Thermometer> {
  Widget termometro = Often();
  var recycleIconColorInactive = Colors.white;
  var recycleIconColorActive = Colors.white;
  var explanationTitle = 'Plastics Arround Us';
  var explanationBody =
      'They are very dangerous to our environment, if you can\'t avoid it, choose it wisely';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(104, 206, 216, 15),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backGround), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
//Thermometer
              Padding(padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 305,
                      child: termometro,
                    ),
// Explanation Text
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
//                      Title
                            Container(
                              width: 200,
                              child: Text(
                                explanationTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  fontSize: 20,
                                ),
                              ),
                            ),
//                      Body
                            Container(
                              padding: EdgeInsets.only(
                                top: 8.0,
                                bottom: 8.0,
                              ),
                              width: 200,
                              child: Text(
                                explanationBody,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.teal),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
//Question
              Container(
                width: 300,
                child: Text(
                  'Which symbol can you see in the product?',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
//Recycling Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 27,
                    height: 27,
                    child: SvgPicture.asset(
                      'assets/svgs/navegacao_esquerda.svg',
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        recycledNumber(
                          arrow1,
                          Often(),
                          recycleIconColorInactive,
                          recycle1Body,
                          recycle1Title,
                        ),
                        recycledNumber(
                          arrow2,
                          Often(),
                          recycleIconColorInactive,
                          recycle2Body,
                          recycle2Title,
                        ),
                        recycledNumber(
                          arrow3,
                          Rarely(),
                          recycleIconColorInactive,
                          recycle3Body,
                          recycle3Title,
                        ),
                        recycledNumber(
                          arrow4,
                          Rarely(),
                          recycleIconColorInactive,
                          recycle4Body,
                          recycle4Title,
                        ),
                        recycledNumber(
                          arrow5,
                          Sometimes(),
                          recycleIconColorInactive,
                          recycle5Body,
                          recycle5Title,
                        ),
                        recycledNumber(
                          arrow6,
                          Never(),
                          recycleIconColorInactive,
                          recycle6Body,
                          recycle6Title,
                        ),
                        recycledNumber(
                          arrow7,
                          Rarely(),
                          recycleIconColorInactive,
                          recycle7Body,
                          recycle7Title,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 2),
                    width: 27,
                    height: 27,
                    child: SvgPicture.asset(
                      'assets/svgs/navegacao_direira.svg',
                      color: Colors.white,
                    ),
                  ),
                ],
              )
//              Container(
//                width: 300,
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: [
//// 1 - Often
//                    recycledNumber(
//                      arrow1,
//                      Often(),
//                      recycleIconColorInactive,
//                      recycle1Body,
//                      recycle1Title,
//                    ),
//                    recycledNumber(
//                      arrow2,
//                      Often(),
//                      recycleIconColorInactive,
//                      recycle2Body,
//                      recycle2Title,
//                    ),
//                    recycledNumber(
//                      arrow3,
//                      Rarely(),
//                      recycleIconColorInactive,
//                      recycle3Body,
//                      recycle3Title,
//                    ),
//                    recycledNumber(
//                      arrow4,
//                      Rarely(),
//                      recycleIconColorInactive,
//                      recycle4Body,
//                      recycle4Title,
//                    ),
//                    recycledNumber(
//                      arrow5,
//                      Sometimes(),
//                      recycleIconColorInactive,
//                      recycle5Body,
//                      recycle5Title,
//                    ),
//                    recycledNumber(
//                      arrow6,
//                      Never(),
//                      recycleIconColorInactive,
//                      recycle6Body,
//                      recycle6Title,
//                    ),
//                    recycledNumber(
//                      arrow7,
//                      Rarely(),
//                      recycleIconColorInactive,
//                      recycle7Body,recycle7Title,
//                    ),
//                  ],
//                ),
//              )
            ],
          ),
        ));
  }

  GestureDetector recycledNumber(
      number, variedade, cor, String texto, String title) {
    return GestureDetector(
      onTap: () {
        explanationBody = texto;
        explanationTitle = title;
        setState(() {
          termometro = variedade;
        });
      },
      child: Container(
        width: 70,
        height: 70,
        child: SvgPicture.asset(
          number,
          color: cor,
        ),
      ),
    );
  }
}
