import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'certification.dart';

class ExhitbitionDetailPage3 extends StatelessWidget {
  const ExhitbitionDetailPage3({Key? key}) : super(key: key);

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
          '宇宙多重',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final ScrollController _firstController = ScrollController();

  @override
  var images = [
    'assets/images/Exhibition2.jpeg',
  ];

  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/mainpage.jpeg'),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.transparent,
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
                            'assets/images/Exhibition3.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 500,
                child: Scrollbar(
                  isAlwaysShown: true,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 1000,
                          child: Card(
                            color: Colors.white10,
                            elevation: 0,
                            // margin: const EdgeInsets.all(20),
                            margin: const EdgeInsets.only(top: 0),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),

                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(20),
                                  width: double.infinity,
                                  child: const Text(
                                    "地址 \n 關於宇宙，前陣子在網路上有個熱門話題：我們在宇宙中的地址是什麼？這個問題帶出了許多有趣的答案，也間接展現了許多人對於宇宙的五花八門想像，當我們用日常的經驗作為參考，來試圖捕捉某種狀態時，其實也多少代表了一種陌生與熟悉之間的角力，這個問題的正確答案是「本宇宙－拉尼亞凱亞超星系團－室女座星系團－本星系群－銀河系－獵戶臂－太陽系－第三行星－地球」，相信這裡面的每一個學名，都有其典故，但真正引發我們小小共鳴的，應該還是來自於透過對應某種日常經驗，進而把我們的心帶往遠方的認知過程。 \n\n 對的尺 \n「宇宙多重」作為展覽名稱，是一道指向這種感性理解經驗的提問，在字義上，宇宙的「宇」代表的是空間，「宙」則指時間，它概括了我們抬頭仰望的星空中，所能代表的一切未知，但卻難以測量，所謂的度量衡，指的是計量長度（度）、容積（量）、重量（衡）的物理基礎，而要在這個基礎上建立數據，尋找對的尺來作為測量的單位，便顯得相當重要。以天文學來說，最常見的單位是光年，我們可能很難想像，光在真空中傳播一年的距離9.46×1012公里，也就是9.46兆公里有多遠，即便我們用臺灣全長394公里來做比較，也難以有溫度，但換把尺量：「當光從太陽到達地球約需要八分鐘」時，可能就比較容易有畫面了，再以這個基礎推衍下去，我們每天所看到的太陽，其實都是八分鐘前的太陽，月亮則是一秒前的模樣，這似乎就讓事情變得再更有感覺了。 \n\n 感性單位 \n 本次展覽總共邀請了八位藝術家提供七件作品，作為提供開發感性測量單位的座標，從郭奕臣將一輛老舊農耕車改裝成能自體發電的太空探勘車模型，到張暉明開發出一座能因為欣賞光陰進而令人忘記時間的裝置，焦聖偉以廢棄物作為敲響環保議題的警鐘雕塑，王仲堃用盪鞦韆的經驗來捕捉日常聲響的意義化過程，江忠倫與林建志藉由尋寶及組裝的遊戲來創造神話凝視，廖建忠幽默體現文化歡愉與文明代價的寓言，以及蘇匯宇透過補拍70年代對於未來的揭示，來與被印證的現代做對質，皆為饒富探索意涵，且能透過參與進而激發出更多想像的時空。 \n\n 據說，宇宙仍以難以估量的速度在不斷地擴張中，而即便有一天人類能達到光速，也將永遠無法追上宇宙的盡頭，然而，最棒的天文學家總是活在想像中，而當被動的理解只能成為信仰時，主動的想像則讓我們成為光。",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(_createCertification());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color.fromRGBO(
                                          232, 197, 150, 100), // background
                                      onPrimary: Colors.black87, // foreground
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25.0))),
                                    ),
                                    child: const Text(
                                      '認證並進入!',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  height: 40,
                                  width: 150,
                                  margin: const EdgeInsets.all(20),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      );
    });
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
