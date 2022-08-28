import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectBronzeScreen extends StatefulWidget {
  static const routeName = 'select-bronze-screen';

  @override
  SelectBronzeScreenState createState() => SelectBronzeScreenState();
}

class SelectBronzeScreenState extends State<SelectBronzeScreen> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
  'assets/images/card_bronze.svg' ,
  'assets/images/card_diamond.svg' ,
  'assets/images/card_gold.svg' ,
  'assets/images/card_silver.svg' ,

  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: false,
                reverse: false,
                enableInfiniteScroll: false,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: true,
                viewportFraction: .7,
                scrollDirection: Axis.horizontal,

                onPageChanged: (index, reason) {
                  setState(() {
                    print(_current);
                    _current = index;
                  });
                },
              ),
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      //margin: EdgeInsets.symmetric(horizontal: 10.0),
//                      decoration: BoxDecoration(
//
//                          gradient: LinearGradient(
//                              begin: Alignment(0.5, 0),
//                              end: Alignment(0.5, 1),
//                              colors: [
//                            const Color(0xfff3d4bf),
//                            const Color(0x47f4d5c0)
//                          ])),
                      child: SvgPicture.asset(imgUrl),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            // Rectangle 2
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, MyHomePage.routeName) ;
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x420148a4),
                          offset: Offset(0, 10),
                          blurRadius: 40,
                          spreadRadius: 0)
                    ],
                    color: const Color(0xffb3b3b3)),
                child: Center(
                  child: // Choose plan
                      Text("Choose plan",
                          style: const TextStyle(
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Sanchez",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0),
                          textAlign: TextAlign.left),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget isCheck(bool isCheck, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20 ,top: 20),
      child: Row(
        children: [
          isCheck
              ? SvgPicture.asset('assets/icons/check.svg')
              : SvgPicture.asset('assets/icons/uncheck.svg'),
          SizedBox(
            width: 8,
          ),
//          Flexible(
//            fit: FlexFit.loose,
//            child: RichText(
//                textAlign: TextAlign.center,
//                overflow: TextOverflow.ellipsis,
//                maxLines: 1,
//                text: TextSpan(children: [
//                  TextSpan(
//                      style:const TextStyle(
//                          color: const Color(0xff1c2340),
//                          fontWeight: FontWeight.w700,
//                          fontStyle: FontStyle.normal,
//                          fontSize: 16.0),
//                      text:  title),
//                ])),
//          ) ,
          Text(title,
              style: const TextStyle(
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Sanchez",
                  fontStyle: FontStyle.normal,
                  fontSize: 14.0),
              textAlign: TextAlign.left)
        ],
      ),
    );
  }

  goToPrevious() {
    // carouselSlider.previousPage(
    //   duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    // carouselSlider.nextPage(
    //   duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}




/*
Column(
                        children: [
                          // Add a profile picture
                          // Silver
                          SizedBox(
                            height: 10,
                          ),
                          Text("Silver",
                              style: const TextStyle(
                                  color: const Color(0xe8ffffff),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Sanchez",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 24.0),
                              textAlign: TextAlign.left),

                          SizedBox(
                            height: 27,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // 35,000
                              Text("35,000",
                                  style: const TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Sansita",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 24.0),
                                  textAlign: TextAlign.left),
                              // / 6 months
                              Text("/ 6 months",
                                  style: const TextStyle(
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Sanchez",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 10.0),
                                  textAlign: TextAlign.left)
                            ],
                          ),

                          SizedBox(
                            height: 61,
                          ),
                          isCheck(true, 'Avaliable online'),
                          isCheck(true, 'Maxmum of 10 appoinment per da'),
                          isCheck(false, 'Appointment reminder by the company'),
                          isCheck(false, 'Viewed as top in the search list'),
                          isCheck(false, 'Promotion and markiting campain'),
                        ],
                      )
 */