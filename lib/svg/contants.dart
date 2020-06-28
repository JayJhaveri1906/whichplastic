import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const backGround = 'assets/images/Background-01-01.png';

const fundoTermometro = 'assets/svgs/fundo-01.svg';

const corTermometro = Colors.white;

const base1 = 'assets/svgs/1-01.svg';
const base2 = 'assets/svgs/2-01.svg';
const base3 = 'assets/svgs/3-01.svg';
const base4 = 'assets/svgs/4-01.svg';

const arrow1 = 'assets/svgs/Arrows/arrow-01.svg';
const arrow2 = 'assets/svgs/Arrows/arrow-02.svg';
const arrow3 = 'assets/svgs/Arrows/arrow-03.svg';
const arrow4 = 'assets/svgs/Arrows/arrow-04.svg';
const arrow5 = 'assets/svgs/Arrows/arrow-05.svg';
const arrow6 = 'assets/svgs/Arrows/arrow-06.svg';
const arrow7 = 'assets/svgs/Arrows/arrow-07.svg';





class Never extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          base4, color: Color.fromRGBO(180, 0, 0, 100),
        ),
        SvgPicture.asset(
          base3, color: Colors.deepOrangeAccent[200],
        ),
        SvgPicture.asset(
          base2, color: Colors.yellow,
        ),
        SvgPicture.asset(
          base1, color: Colors.green,
        ),
        SvgPicture.asset(
          fundoTermometro, color: corTermometro,
        ),
      ],
    );
  }
}

class Rarely extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        SvgPicture.asset(
          base3, color: Colors.deepOrangeAccent[200],
        ),
        SvgPicture.asset(
          base2, color: Colors.yellow,
        ),
        SvgPicture.asset(
          base1,
          color: Colors.green,
        ),
        SvgPicture.asset(
          fundoTermometro, color: corTermometro,
        ),
      ],
    );
  }
}

class Sometimes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          base2, color: Colors.yellow,
        ),
        SvgPicture.asset(
          base1,color: Colors.green,
        ),
        SvgPicture.asset(
          fundoTermometro, color: corTermometro,
        ),
      ],
    );
  }
}

class Often extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
//          arrow1,
          base1,
          color: Colors.green,
        ),
        SvgPicture.asset(
          fundoTermometro, color: corTermometro,
        ),
      ],
    );
  }
}





//class VazioVelho extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: [
//        SvgPicture.asset(
//          fundoTermometro, color: corTermometro,
//        ),
//      ],
//    );
//  }
//}


const recycle1Title = 'PET - Polyethylene Terephthalate';
const recycle1Body = 'Often recycled. Is it safe? Yes. It\'s known to have a porous surface that allows bacteria to accumulate, so don\'t reuse the botles again and again';

const recycle2Title = 'HDPE - High Density Polyethylene';
const recycle2Body = 'Often recycled. Is it safe? Yes! This plastic is very safe and has low risk of leaching.';

const recycle3Title = 'PVC - Polyvinyl Chloride';
const recycle3Body = 'Rarely recycled. Is it safe? No! There are chemicals in this material, called phthalates, that interfere with hormonal development. You should avoid the use of this plastic around food and never cook using food wrap, especially in a microwave oven.';


const recycle4Title = 'LDPE - Low Density Polyethylene';
const recycle4Body = 'Rarely recycled. Is it safe? Yes! Mostly used in plastic bags and some bottles.';

const recycle5Title = 'PP - Polypropylene';
const recycle5Body = 'Sometimes recycled, depending on location. Is it safe? Yes! Most used in straws, film packaging, disks and yogurt tubs.';

const recycle6Title = 'PS - Polystyrene';
const recycle6Body = 'Not recycled. Also known as Stryfoam, it is difficult to recycle and most recycling programs won’t accept it. Is it safe? No! Lots of evidence suggests that this type of plastic leaches potentially toxic chemicals, especially when heated. Avoid!';

const recycle7Title = 'Other types';
const recycle7Body = 'Rarely recycled. It is difficult to recycle those remaining types of plastic and most recycling programs won’t accept it. Is it safe? Uncertain! You should dispose of any food or drink related product that is known to contain BPA, though.';






