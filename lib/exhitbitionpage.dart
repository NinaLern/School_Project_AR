import 'package:flutter/material.dart';
import 'exhitbition_detail1.dart';
import 'exhitbition_detail2.dart';

class Exhitbitionpage extends StatelessWidget {
  const Exhitbitionpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.yellow[100],
        backgroundColor: const Color.fromRGBO(232, 197, 150, 100),

        iconTheme: const IconThemeData.fallback(),
        title: const Text('展覽列表', style: TextStyle(color: Colors.black)),
      ),
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  get bold => null;

  get color => null;

  @override
  Widget build(BuildContext context) {
    List<Widget> children1 = [
      const Text(
        '逐鹿之海—物流、人流、海流',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const Text(
        '2021/12/11 - 2022/04/10',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          backgroundColor: Colors.white12,
        ),
      ),
    ];
    List<Widget> children2 = [
      const Text(
        '時空‧疊影‧現代情──何肇衢90大展',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const Text(
        '2021/11/20 - 2022/03/20',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          backgroundColor: Colors.white12,
        ),
      ),
    ];

    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/mainpage.jpeg'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14.0))),
              child: InkWell(
                // radius: 100,
                // splashColor: Colors.white.withAlpha(30),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        // color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Exhibition1.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5), //陰影位置
                            blurRadius: 7, //模糊程度
                            spreadRadius: 5, //陰影模糊大小
                          )
                        ],
                      ),
                      width: 350,
                      height: 250,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              top: 165,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Colors.black54,
                            ),
                            width: 800,
                            child: Column(
                              children: children1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(_createDetail1());
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.all(20),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(14.0))),
              child: InkWell(
                // radius: 100,
                // splashColor: Colors.white.withAlpha(30),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        // color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Exhibition2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 5), //陰影位置
                            blurRadius: 7, //模糊程度
                            spreadRadius: 5, //陰影模糊大小
                          )
                        ],
                      ),
                      width: 350,
                      height: 250,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              top: 165,
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Colors.black54,
                            ),
                            width: 800,
                            child: Column(
                              children: children2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(_createDetail2());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createDetail1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const ExhitbitionDetailPage1(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createDetail2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const ExhitbitionDetailPage2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
