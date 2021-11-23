import 'package:flutter/material.dart';
import 'certification_passcode.dart';
import 'certificarion_qrcode.dart';

class CertificationPage extends StatelessWidget {
  const CertificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(232, 197, 169, 100),
        iconTheme: const IconThemeData.fallback(),
        title: const Text(
          '驗證方式',
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
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/mainpage.jpeg'),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Container(
              alignment: Alignment.center,
              width: 300,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: const Text(
                '請點選驗證方式進入AR介面',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                InkWell(
                  child: Container(
                    width: 100,
                    child: Column(
                      children: [
                        Image.asset('assets/images/qrcodescan.png'),
                        const Text(
                          'QrCode',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_qrcodeClick());
                  },
                ),
                const SizedBox(
                  width: 50,
                ),
                InkWell(
                  child: Container(
                    width: 100,
                    child: Column(
                      children: [
                        Image.asset('assets/images/password.png'),
                        const Text(
                          '驗證碼',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(_presscodeClick());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Route _presscodeClick() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const CertificationPressCodePage(),
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

Route _qrcodeClick() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const CertificationQRCodePage(),
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
