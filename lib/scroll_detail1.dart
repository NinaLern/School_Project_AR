import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'certification.dart';

class ExhitbitionDetailPage1 extends StatelessWidget {
  const ExhitbitionDetailPage1({Key? key}) : super(key: key);

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
          '逐鹿之海—物流、人流、海流',
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
    'assets/images/IMG_1298.JPG',
    'assets/images/IMG_1307.JPG',
    'assets/images/IMG_1393.jpeg'
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
                            'assets/images/detail1.jpeg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/detail2.jpeg',
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
                          height: 880,
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
                                    "臺灣相對於中國，是中原的邊緣，卻是海洋戰略位置的核心，臺灣與世界的關係連結就在海洋，不論是貿易的物流管道、資源和軍事競爭的戰場、語言和文化的傳播路徑、移民和勞工的移動路線等，這些都透過海洋而形成了臺灣今日在全球化生態的文化面貌。 \n 展題「逐鹿之海」借用成語「逐鹿中原」之意，比喻亂局中各方角力的情形。成語以鹿比喻政權、地位，「鹿」亦音同「祿」，在古代是狩獵的最佳獵物，如果得到了鹿，不僅有得其要位之意涵，貿易價值也有極高意義，而鹿在臺灣最早的國際貿易中也占有重要意義。「逐鹿之海」取其群雄爭奪利益的競逐之意，以海洋脈絡的權力競逐史轉化臺灣過去以中原文化為核心權位的論述觀點，重新思考臺灣在海洋版圖中的文化脈絡和敘事。展覽以「逐鹿之海—物流、人流、海流」為題，跳脫海洋為自然生態循環的環保論述，轉以海洋之於臺灣島嶼所帶來的全球性經濟、政治與資本主義的浪潮與影響，關注「物」、「人」及「文化」在全球串聯的歷史洪流與經濟浪潮下的移動狀態，進而探討在經歷多個時代的結構轉變下，在競爭裡常被忽略或壓抑的人性倫理、精神價值，以及鮮少被關注的勞工與人權問題。 \n 本次展覽共展出7組當代藝術家作品（楊茂林、許家維、陳界仁、盧昱瑞、林冠名、印尼藝術家伊旺‧安米特及蒂塔‧薩利娜）和部分來自國美館藏品，臺南市文物資產管理處熱蘭遮城出土文物、以及講述清朝出兵平定臺灣林爽文事件的國美館版畫藏品《平定臺灣戰圖》、國美館在亞洲藝術雙年展中委託印尼藝術家伊旺‧安米特及蒂塔‧薩利娜針對外移工在臺灣工作人權議題所創作的影像作品〈壽〉、〈灑鹽於海〉、〈同意/否決/未定〉。這些展出創作分別從不同的觀點勾勒出臺灣在歷史洪流下物品及文化移動的路徑、政權與經濟產業轉移下的衝擊，包括在臺灣在十七世紀大航海時代位於亞洲經貿轉運站的角色、海上貿易、商權的激烈競爭；之後的臺灣受到不同的政權統治，不論在政治、軍事、貿易、經濟和交通上，臺灣越來越凸顯其在海洋脈絡中對外地緣政治與經濟連結的關鍵角色。這次的展出是經由將臺灣的歷史、文化和人交織在這個透過海洋的交通發展、全球經濟脈絡所串連出來的世界史，試圖去尋找在全球激烈的競逐下，一座邊緣島嶼的座標如何定位，以及在孤境中與時代狂浪相抗的人們之漂流記事。",
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
