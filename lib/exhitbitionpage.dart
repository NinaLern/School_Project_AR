import 'package:flutter/material.dart';
import 'exhitbition_detail.dart';

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
                          image: AssetImage('assets/images/IMG_1297.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black12,
                        //     offset: Offset(5, 5), //陰影位置
                        //     blurRadius: 10, //模糊程度
                        //     spreadRadius: 2, //陰影模糊大小
                        //   )
                        // ],
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
                              color: Colors.white24,
                            ),
                            width: 700,
                            child: Column(
                              children: const [
                                Text(
                                  '展覽名稱',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '展覽日期',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    backgroundColor: Colors.white12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(_createDetail());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createDetail() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const ExhitbitionDetailPage(),
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
