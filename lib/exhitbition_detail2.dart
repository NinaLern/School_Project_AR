import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'certification.dart';

class ExhitbitionDetailPage2 extends StatelessWidget {
  const ExhitbitionDetailPage2({Key? key}) : super(key: key);

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
          '時空‧疊影‧現代情──何肇衢90大展',
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
      'assets/images/Exhibition2.jpeg',
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
                      isLoop: false,
                      children: [
                        Image.asset(
                          'assets/images/Exhibition2.jpeg',
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
                        "我的油畫創作，無論靜物或風景、寫實到抽象，完全有自然的根據。 \n 我所追求的是心中意象的重現，我是在畫畫，不是畫景，不是眼睛看到的景象，而是心中剎那的感動和美的經驗傳遞。\n                                                                                                                                                              ----何肇衢    \n\n何肇衢1931 出生於日治時期（昭和6年）新竹縣州芎林庄鹿寮坑。1945進入新竹縣立中學竹東分校，在美術老師賴榮來啟蒙下，學習繪畫的知識和技法。1949 年就讀於臺北師範學校藝術科。1950年水彩作品〈池畔〉入選臺灣省全省美術展覽會（簡稱「全省美展」)。1957年起積極參與國內重要美展，不間歇地參與美展磨礪藝能，獲獎達29次之多，並連續三年獲得「臺陽獎」。而1957 年正是臺灣畫壇「現代繪畫運動」風起雲湧的一年，他與「五月」和「東方」畫會成員交好，相互探研切磋；而在「現代繪畫」的理解上，則透過日本雜誌及西方藝術刊物的鑽研，帶給何先生深刻的衝擊，開啟畢生奮力不懈的藝術探索之旅。繪畫創作是何肇衢生命的重要課題，並奉為畢生不悔的使命，參與國內外各大展覽無數，並受邀舉辦個展近40次，藝術成就超群卓越。\n何先生沉酣於風景寫生，遊歷於臺灣、日本島國、美國、歐亞大陸等地，從自然景物的脈動，汲取創作泉源，將自然萬物的節奏與律動，匯聚筆端，不斷地揮灑、試驗、解構、堆疊、重組與轉化，是他回應印象派、立體派、野獸派……等多重試探與印證，走向抽象與創新變革，是他繪畫探索過程的必然。\n創作逾一甲子的何肇衢，以油畫為創作主軸，畫筆演繹人生。在創作表現上，可窺見何先生以中國文人畫為底蘊，師法自然，卻不囿於自然。不論風景或人物；具象或抽象；寫實或寫意；繁複或簡潔；絢麗或純淨，不僅在寫物之形，更是內在心緒流轉的抒發；既是時空再現，更是跨越時空，蘊藏濃厚的現代風情，動人心魄且耐人尋味。可以說，自然景物是何先生創作的基調，繪畫猶如其生命符碼，無論風格、技法如何轉變，既是理性與感性的碰撞，更是他將東方美學與西方前衛藝術思潮巧妙交融的見證，故能淬鍊出具時代性與獨特性作品，譜寫出一幅幅非凡創作，綻放出璀璨迷人的藝術光芒。\n本次展出90餘件油畫作品，具體而微地呈顯的創作風格與脈絡，及不凡的藝術表現。期待透過本展，觀者與作品精彩對話中，徜徉於藝術家描摹的自然風光外，其蘊藏的深邃內蘊，獨特且鮮明的美學風格，得以引發共鳴，感悟藝術家以畫筆磨礪出不凡的畫藝人生。",
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
