import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'certification.dart';

class ExhitbitionDetailPage extends StatelessWidget {
  const ExhitbitionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(232, 197, 169, 100),
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        // shadowColor: Colors.transparent,
        // foregroundColor: Colors.transparent,
        iconTheme: const IconThemeData.fallback(),
        title: const Text(
          '展覽名稱',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var images = [
      'assets/images/IMG_1298.JPG',
      'assets/images/IMG_1307.JPG',
      'assets/images/IMG_1393.jpeg'
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
            Container(
              decoration: const BoxDecoration(
                color: Colors.white60,
              ),
              child: Card(
                margin: const EdgeInsets.only(top: 0),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Column(
                  children: [
                    ImageSlideshow(
                      width: double.infinity,
                      height: 250,
                      initialPage: 0,
                      indicatorColor: Colors.yellow[200],
                      indicatorBackgroundColor: Colors.grey,
                      onPageChanged: (value) {
                        debugPrint('Page changed: $value');
                      },
                      autoPlayInterval: 3000,
                      isLoop: true,
                      children: [
                        Image.asset(
                          'assets/images/IMG_1298.JPG',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/IMG_1307.JPG',
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          'assets/images/IMG_1393.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white60,
              elevation: 0,
              // margin: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: InkWell(
                radius: 100,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 400,
                      child: const Text(
                        '展覽介紹內容',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(_createCertification());
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(
                              232, 197, 150, 100), // background
                          onPrimary: Colors.black87, // foreground
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                        ),
                        child: const Text(
                          '認證並進入!',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      height: 40,
                      width: 150,
                      margin: const EdgeInsets.all(20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createCertification() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const CertificationPage(),
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
