import 'package:flutter/material.dart';
import 'package:makar_ios/scroll_test.dart';

import 'mainpage_place.dart';
import 'mainpage_city.dart';
import 'mainpage_city.dart';
import 'exhitbitionpage.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Page1(),
    ),
  );
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  get row => null;

  get alignment => null;

  get value => null;

  @override
  Widget build(BuildContext context) {
    var cities = ['台北市', '桃園市', '台中市', '台南市'];
    var TCplace = ["國立台灣美術館", "民意街文創市集", "小蝸牛市集"];
    var Allplace = ["台北當代藝術館", "國立台灣美術館", "民意街文創市集", "小蝸牛市集"];

    var TPcountries = ["中山區", "文山區", "大同區", "大安區"];
    var TYcountries = ["桃園區", "蘆竹區", "八德區"];
    var TCcountries = ["中區", "北區", "南區", "西區"];
    var TNcountris = ["七股區", "麻豆區", "安平區", "西區", "北區"];

    var CountryAll = [TPcountries, TYcountries, TCcountries, TNcountris];

    var place = Allplace;

    List<Widget> FPlace = [];

    if (DropdownButton == "台中市") {
      print(value);
      place == TCplace;
    }

    // var exhitbtions = [
    //   {
    //     "city": "桃園市",
    //     "district": "八德區",
    //     "museum": "桃園市兒美術館",
    //     "address": "桃園市八德區介壽路一段 728 號 6 樓",
    //     "phone": "+886 3-286-8668",
    //     "exhibition": [
    //       {
    //         "exhibitID": "0021",
    //         "name": "空間遊戲",
    //         "showTime": "2021/03/11 - 2021/05/23",
    //         "place": "",
    //         "webLink":
    //             "https://tmofa.tycg.gov.tw/ch/exhibitions/upcoming-exhibitions/40",
    //         "description":
    //             "空間是怎麼構成的？展場中垂直的牆與柱、水平的天花板與地面，常被忽略、視而不見。然而，這些結構及其所代表的線性維度，卻是界定空間的要素。桃園市兒童美術館的《空間遊戲》特展即由此出發，藉王德瑜、林育正、邱裕文及高德亮等藝術家的大型裝置，讓兒童或親子觀眾以遊戲性的方式參與體驗、探索空間。/n王德瑜在天花板與地面之間鼓起了一個充氣裝置，觀眾得以踏步進入，體驗界線消融的空間，也可循聲探索，進行一場以聽覺引領觸覺、開展身體感知的空間遊戲。林育正則讓常見的樑柱、牆面與樓梯，解構、重組成一處「舞台」也成為其中的主角，引人重新認識建築空間。藝術家塑造的「小東西」，攀附或藏身其間，更讓人充滿趣味與驚奇地重新關注日常環境、重新發現平凡角落。建築師邱裕文把連續的牆面切成錯綜的斷面，也把柱和牆分離，邀請大家穿梭其間，玩味打破空間秩序和規則的嶄新經驗。高德亮利用雷射光反轉觀眾身體成為定位的「發光座標」，讓觀眾漫步體會「座標」的移動，探索空間之際也具體感知自己的所在。/n兒童的「空間概念」發展，來自身體感知和實際體驗，它是生活學習也是科學或藝術發展所不可或缺。《空間遊戲》改造、變化、翻轉既定的展場空間，藉由得以進入其中、遊戲互動、身歷其境的藝術裝置，透過視覺、聽覺、觸覺、特別是身體感知，刺激對空間的好奇與敏銳觀察、促進空間認知的形塑或重新發現。同時，也邀請大小朋友突破既定框架，打開對空間的想像。",
    //         "enabled": false,
    //         "status": [
    //           {"open": "2021-03-11 00:00:00", "close": "2021-05-23 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       }
    //     ]
    //   },
    //   {
    //     "city": "台北市",
    //     "district": "中山區",
    //     "museum": "台北市立美術館",
    //     "address": "臺北市中山區中山北路三段181號",
    //     "phone": "+886 2 2595 7656",
    //     "exhibition": [
    //       {
    //         "exhibitID": "0001",
    //         "name": "2020 台北雙年展：「你我不住在同一星球上」",
    //         "showTime": "2020/11/21 - 2021/03/14",
    //         "place": "一樓1A~1B、二樓2A~2B、地下樓D~E~F、王大閎建築劇場",
    //         "webLink":
    //             "https://www.tfam.museum/Exhibition/Exhibition_page.aspx?ddlLang=zh-tw&id=677&allObj=%7B%22JJMethod%22%3A%22GetEx%22%2C%22Type%22%3A%221%22%7D",
    //         "description":
    //             "本屆台北雙年展以「你我不住在同一星球上」為題，由法國學者布魯諾．拉圖(Bruno Latour）與馬汀．圭納（Martin Guinard）共同策展，並由林怡華擔任公眾計畫策展人，邀請來自27 國／地區共57 位／組創作者與團隊，以及橫跨政治學、社會學、地理學、海洋科學、相關人文歷史研究的學者與校系，共同為本屆雙年展累積多元有機的發展基礎。 /n考量現今的我們因生態問題而嚴重對立，對這個世界或星球的認知多所分歧，策展團隊導入「政治協商的合縱連橫」以創造「外交新碰撞」的情境。「外交」是指碰到衝突情境的前後，所採取的一系列技能、程序和思考習慣。外交碰撞特點在於，衝突情境中並無任何至高無上的仲裁者足以決定各方的對與錯，而更顯外交談判的必要性。 /n此次雙年展希望藉由展覽大量觸發這樣的碰撞，以策展結構和空間配置塑造一座有如「星象廳」的場域，以星球為單位，描摹各星球間相互拉扯的引力，並透過一系列公眾計畫摹擬星球碰撞的瞬間，藉此幫助參觀者自行定義他們所希望居住的地球。",
    //         "enabled": true,
    //         "status": [
    //           {"open": "2020-11-21 00:00:00", "close": "2021-03-14 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       },
    //       {
    //         "exhibitID": "0002",
    //         "name": "接近─賴志盛",
    //         "showTime": "2020/06/25 - 2021/06/06",
    //         "place": "三樓3C 藝想迴廊",
    //         "webLink":
    //             "https://www.tfam.museum/Exhibition/Exhibition_page.aspx?ddlLang=zh-tw&id=671&allObj=%7B%22JJMethod%22%3A%22GetEx%22%2C%22Type%22%3A%221%22%7D",
    //         "description":
    //             "藝想迴廊位於本館大廳挑高三層樓所圍塑的開放區域。有別於館內典型的白盒子展覽場，這裡是高而潘建築師很特殊而具個性的空間規劃。觀眾在此可以往下俯瞰大廳，其開放流動的場域特性，形成獨特的建築語彙。本館於2018年重新定位這個迴廊，陸續邀請當代藝術家聚焦於此環境特性進行限地製作；期待透過建築、空間與人之間不同語言巧妙的相聚，提供觀眾沉澱、互動與交流的場所。 /n全新年度計畫「接近」由賴志盛製作，以「接近光與風一些」的概念介入空間。他將一樓大廳視為一潭池子，女兒牆是它的池岸，池子的周圍便是三樓迴廊。他在迴廊裡製作了高低不一的平台，持續延伸繞過女兒牆，最終抵達位於挑空處的懸台，探進北美館大廳的「池子」—一個原只能觀看、無法前往的地方。他的靈感來自於鳥類在高處築巢，建造一個生存的空間；以及人們在教堂樑柱上或高牆之間建造通道，走向高空中的懸台，在那裡祈福，以得到精神慰藉。 /n在這裡，賴志盛並未創造所謂的作品；取而代之的，是建造一條跨越的路徑，邀請觀眾或踮腳或跨越至欄杆之外觀看，在不同的位置與視角去經歷這一方美術館風景；進而對於習以為常的廊道，產生嶄新的感受。觀眾站在突出懸台上，在觀看時同時也被觀看；或碰觸到實體的天花板及女兒牆，或探進「池」內的虛空間，和從一樓直通三樓散射的光與流動的空氣對話，共同形成了作品。 /n賴志盛在「接近」中以擅長的細膩手法進行干預性的實踐，牽引著觀眾的視線及身體越過界線、鬆動與藝想迴廊的既有關係，重新喚醒人們探索周遭環境的感知能力及身體意識，在參觀過程中得以與藝術相遇，也與自身相遇。",
    //         "enabled": true,
    //         "status": [
    //           {"open": "2020-06-25 00:00:00", "close": "2021-06-06 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       }
    //     ]
    //   },
    //   {
    //     "city": "台北市",
    //     "district": "大同區",
    //     "museum": "台北當代藝術館",
    //     "address": "台北市大同區103長安西路39號",
    //     "phone": "+886 2 2552 3721",
    //     "exhibition": [
    //       {
    //         "exhibitID": "0011",
    //         "name": "楊俊　藝術家，合作者，他們的展覽與三個場域",
    //         "showTime": "2021/02/06 - 2021/03/31",
    //         "place": "",
    //         "webLink":
    //             "https://www.mocataipei.org.tw/tw/ExhibitionAndEvent/Info/%E6%A5%8A%E4%BF%8A%E3%80%80%E8%97%9D%E8%A1%93%E5%AE%B6%EF%BC%8C%E5%90%88%E4%BD%9C%E8%80%85%EF%BC%8C%E4%BB%96%E5%80%91%E7%9A%84%E5%B1%95%E8%A6%BD%E8%88%87%E4%B8%89%E5%80%8B%E5%A0%B4%E5%9F%9F",
    //         "description":
    //             "「藝術家，合作者，他們的展覽與三個場域」個展系列，始於楊俊於2018年在首爾的善宰藝術中心舉辦的「總觀視角」，那既是一次作品的總梳理，也是用回溯和反思的角度，去著墨「回顧」對藝術家的意義。延續這樣的思路軸線，該展於隔年（2019）發展成在奧地利格拉茨美術館的「藝術家，作品，展覽」一展，並將反思的主體從個人轉移到體制機構的範疇。也就是說，在探究作為一位藝術家的意義之餘，進一步思索加諸在藝術家與其作品上的期待，讓展覽本身變成一個論題。這個思維在臺北有了進一步的擴充，其中共同參與這項群集式個展的眾人包括：Christopher Adams和蔣慧仙、艾文‧鮑爾／buero bauer、奧利佛‧克利佩爾、松根充和、西村祐貴、Topotek 1、千鳥藝術，以及與楊俊的英文名撞名的另一位Jun Yang──向這位現居舊金山的韓裔藝術家的邀展之舉，使楊俊解構個展定義的意圖不言自明。/n因此，「藝術家，合作者，他們的展覽與三個場域」是個展也是聯展，分別在台北當代藝術館和關渡美術館以不同樣貌呈現，而本展的第三種表現形式已於TKG+ Projects展出至一月底。/n這個展覽的三種版本分別有著不同的獨特脈絡和相應重點：在當代館的版本強調展覽的公眾任務和當代館的公共空間面向，據此，諸如兒童和成人工作坊、教育推廣和藝術家導覽活動，及展覽相關講座及討論活動等，自展覽策劃之初即成為本展的重要構成元素。",
    //         "enabled": false,
    //         "status": [
    //           {"open": "2021-02-06 00:00:00", "close": "2021-03-31 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       },
    //       {
    //         "exhibitID": "0012",
    //         "name": "「戰後野人手札–陳依純個展」與「漫遊者的生存戰略–羅禾淋個展」",
    //         "showTime": "2021/02/06 - 2021/03/31",
    //         "place": "",
    //         "webLink":
    //             "https://www.mocataipei.org.tw/tw/ExhibitionAndEvent/Info/%E3%80%8C%E6%88%B0%E5%BE%8C%E9%87%8E%E4%BA%BA%E6%89%8B%E6%9C%AD%E2%80%93%E9%99%B3%E4%BE%9D%E7%B4%94%E5%80%8B%E5%B1%95%E3%80%8D%E8%88%87%E3%80%8C%E6%BC%AB%E9%81%8A%E8%80%85%E7%9A%84%E7%94%9F%E5%AD%98%E6%88%B0%E7%95%A5%E2%80%93%E7%BE%85%E7%A6%BE%E6%B7%8B%E5%80%8B%E5%B1%95%E3%80%8D",
    //         "description":
    //             "「戰後野人手札–陳依純個展」/n《戰後野人手札》的系列作品，演譯的是多重真實敘事文本所改編的創作，藉由多年口述歷史和文獻再譯，將當事人全數加密改寫，重新多重轉譯的一個時空舞台：被過去歷史恐懼的深層根脈教養著，時時刻刻處於一種被害監視精神下成長的野人，以及其詭譎的臺灣在野歷史。/n「漫遊者的生存戰略–羅禾淋個展」/n資訊空間是獨立的，任何國家都不能宣稱擁有它。1996年約翰．佩里．巴洛(John Perry Barlow) 的《資訊空間獨立宣言》(A Declaration of the Independence of Cyberspace)，文中提及資訊空間如同烏托邦(utopia)的存在：「我們正在創造一個世界，所有人都能不受種族，經濟實力，軍事力量或出生地的影響，也沒有任何特權或偏見。我們正在創造一個世界，無論多麼奇異，任何地方任何人都可以表達自己的信念，而不必擔心被強迫保持沉默或順從。」然而，現今的網路世界已不再是此宣言中形容的樣貌，而是處於被資本群雄割據的狀態，大型的網路引擎如Google、大型的社群平台如Facebook、大型的影音平台如Youtube，都以近乎壟斷的方式，主宰資訊空間的一舉一動，甚至在政治選舉扮演控制資訊的一方。/n2020年Netflix的紀錄片《智能社會：進退兩難(The Social Dilemma)》，以大型網路平台的工程師為訪問對象，得到網路智慧化的「成癮」現象，也是資訊空間面臨最大的危機。網路社交化、自動推播、演算喜好，高度智慧化的網路已經形成如同毒品般讓人成癮的狀態，也是一手打造資訊空間自行判斷人類喜好的工程師，目前已經無法挽回的局面。這種情況如同作家威廉．吉布森(William Ford Gibson)於1984年發表的經典著作《神經喚術士(Neuromancer)》，本書又另譯《神經漫遊者》，書中講述人工智慧Neuromancer，逼迫主角與自己融合，而這種困境，正是目前資訊空間所面臨的難題，因此人們做為一位「漫遊者」要如何逃離這種網際已經被監控的當下，也是人們要及早學會的技能，這種技能就是一種「生存戰略」，也因此漫遊者的生存戰略，在智能社會進退兩難的當下，已經是我們不得不面對與學習的手段。",
    //         "enabled": false,
    //         "status": [
    //           {"open": "2021-02-06 00:00:00", "close": "2021-03-31 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       }
    //     ]
    //   },
    //   {
    //     "city": "台中市",
    //     "district": "西區",
    //     "museum": "國立台灣美術館",
    //     "address": "臺中市西區五權西路一段2號",
    //     "phone": "+886 4 2372 3552",
    //     "exhibition": [
    //       {
    //         "exhibitID": "0033",
    //         "name": "影像之後：湯瑪斯．魯夫1989-2020攝影作品展",
    //         "showTime": "2021/03/27 - 2021/07/04",
    //         "place": "101展覽室",
    //         "webLink":
    //             "https://event.culture.tw/NTMOFA/portal/Registration/C0103MAction?useLanguage=tw&actId=10023&request_locale=tw",
    //         "description":
    //             "「湯瑪斯‧ 魯夫― 影像之後 1989-2020 攝影作品展Thomas Ruff - after.images WORKS 1989-2020」為德國藝術家湯瑪斯．魯夫（Thomas Ruff，1958 年生於德國哈默斯河畔采爾）於東南亞的首次大型機構個展，展出藝術家1979 年創作以來，約31 個系列中的15 個系列，共105 組件作品，本展將是魯夫自慕尼黑藝術之家（Haus der Kunst Munich，2012）的回顧展，到近期於日本的考察展（東京國立近代美術館、金澤21 世紀美術館，2016 ／ 2017）與杜塞道夫北威州K20 美術館的個展（K 20 – Kunstsammlung NRW，2020-2021）以來，至今最完整的展覽之一。湯瑪斯．魯夫的新作品系列《中國樣板畫》（tableaux chinois）也將於亞洲首次展出。/n 1989 年，也是展出作品時序的起點，文化上不僅恰好碰上如德國柏林圍牆倒塌、北京天安門大屠殺等政治事件，也與全球數位攝影的興起及網際網路發明後數位影像的加速流通重疊。於此框架下，本展從魯夫的藝術作品自1989 年以來愈來愈加明顯的幾個關鍵面向開始：魯夫自七〇年代晚期，多數的作品是利用相機創作，今日，他則以典藏影像資料庫進行創作，包括自己的藝術產出、透過電腦的無相機影像生產，以及攝影圖像多層技術性疊合的作品愈來愈多。這樣的主題框架，加上確信影像絕不中性與客觀，而是因意識型態動機直接或間接的創造和驅動，讓我們能掌握魯夫創作的完整主題核心，也為其藝術生產拉出歷史向度的時間框架。/n 展名「影像之後」取自生理現象「後像」（afterimage），即人眼短暫受到視覺刺激後，在眼前徘徊、如同影子般的暫留影像，通常包含顏色變異及視角變化――這也是藝術家運用於自身作品的手法。標題也引導人們思索往往稱之為「後攝影」（postphotographic）的當今攝影圖像世界：我們生活的世界，被現有的影像環繞，這些影像也大多透過濾鏡、編輯、操弄等手法進行處理，魯夫對現實的影像興趣有限，卻深受影像本身的多重現實吸引，因此他的藝術創作中，大量使用這些技巧，而觀念導向攝影的重點即為反映攝影媒體的狀態及運用。/n本展由馬丁‧格曼策展，展覽以美術館空間的形式與條件，組織為五大主題章節：（1）系列創作：中國樣板畫；（2）攝影史的轉折點；（3）天文學；（4）影像類型；（5）新聞報導，方便觀眾從多個角度理解和閱讀魯夫的創作，其中許多議題亦相互交織。本展以介紹藝術家創作手法及攝影史上各種科學性轉捩點揭開序幕，也闡述攝影與繪畫的關係及其科學方法，融入藝術家個人對天文學等領域的興趣，最後收束於日常面向，以攝影對媒體與傳播的意義結尾。",
    //         "enabled": true,
    //         "status": [
    //           {"open": "2021-03-27 00:00:00", "close": "2021-07-04 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       },
    //       {
    //         "exhibitID": "0034",
    //         "name": "進步時代－臺中文協百年的美術力",
    //         "showTime": "2021/03/20 - 2021/06/20",
    //         "place": "202展覽室",
    //         "webLink":
    //             "https://event.culture.tw/NTMOFA/portal/Registration/C0103MAction?useLanguage=tw&actId=10029&request_locale=tw",
    //         "description":
    //             "2021年適逢1921年成立的臺灣文化協會百年紀念，回想當年，那是一個由舊時代走向現代的進步時代。這個團體聚集了林獻堂、蔣渭水、楊肇嘉、蔡培火等許多臺籍菁英，在日本殖民政府的政治打壓下，仍致力於臺灣文化的啟蒙運動，為臺灣文化向上及建構臺灣的主體性而努力。/n 根據日本官方文獻《臺灣總督府警察沿革志略》的記載，當時臺灣中部地區的知識份子思想特別進步，居於鼓動全島風潮的地位。臺灣文化協會中的許多重要成員為中部仕紳，與中部地區有很深的關係，因此在臺中設置了中央書局作為文化協會成員活動的場所。國美館希望藉此紀念文協百年的機會，以多元史觀策畫展覽。這場展覽將不同以往的政治改革角度，而是從文協與臺灣美術的關係作為出發點，尤其著重於臺中的地緣關係。/n此展覽希望透過挖掘出文協中的許多重要人物，如林獻堂、楊肇嘉、蔡培火、賴和等，這些重要的仕紳和知識份子，在當時都是美術家重要的贊助者。展覽藉由這些贊助者和藝術家的網路，以社會學的角度切入，連結起文協與臺灣美術的關係，相對於一直以來以臺府展作為研究日治時期臺灣美術的視角，提供另一個研究途徑。/n此外，亦與中央書局作連結，透過歷史照片與口述歷史，重新踏查與建構由中央書局為地理中心所輻射出之日治時期中部地區的美術地圖，呈現當時在臺中活動的藝術家與文協之間的緊密關係外，更進一步想讓大眾了解日治時期的前輩藝術家如何在殖民地脈絡、政治場域下開始進行的美術實踐與社會參與。",
    //         "enabled": true,
    //         "status": [
    //           {"open": "2021-03-20 00:00:00", "close": "2021-06-20 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       },
    //       {
    //         "exhibitID": "0035",
    //         "name": "海外存珍：順天美術館藏品歸鄉展",
    //         "showTime": "2021/03/20 - 2021/06/27",
    //         "place": "102-107展覽 & 美術街",
    //         "webLink":
    //             "https://event.culture.tw/NTMOFA/portal/Registration/C0103MAction?useLanguage=tw&actId=10017&request_locale=tw",
    //         "description":
    //             "這是一個收藏家族美好的故事。藥學博士許鴻源先生，以一生的歲月，秉持「藥物醫人身，文化冶人心」的信念，在那個臺灣還沒有官辦近代美術館的艱難時刻，以企業家一己之力，支持藝術家的創作，為臺灣留下大批藝術作品。在他去世後，夫人賡續其志，成立「順天美術館」，展出、推廣這些藝術家的作品。最後，家族遵其遺願，在臺灣可能變得更好的時刻，將這批原本就屬於這塊土地的作品，全部六百餘件，如數捐回臺灣，讓她成為建構臺灣美術史不可或缺的一個區塊。/n許氏家族的用心，正逢臺灣文化部鄭麗君前部長提出「重建臺灣藝術史」政策宣示的時刻，在官民同心的努力下，克服困難，李永得部長踵繼支持，成就了這段前後長達半個世紀的文化傳承使命。/n本展正是站在收藏家、也是捐贈者的立場，呈顯這位心胸寬大、志氣清遠的藝術愛好者，一生關照的視野，及付出的熱忱。全展195位藝術家，出生的年代從最早的1871年到最年輕的1989年，前後橫跨一世紀，這也正是收藏家畢生接觸、收藏、支持的藝術家名單。",
    //         "enabled": true,
    //         "status": [
    //           {"open": "2021-03-20 00:00:00", "close": "2021-06-27 23:59:59"}
    //         ],
    //         "extraNote": {"time": "", "discription": ""}
    //       }
    //     ]
    //   }
    // ];

    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/mainpage.jpeg'),
          ),
        ),
        padding: const EdgeInsets.only(left: 60, right: 60),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 70,
                child: Center(
                    child: Text(
                  'Welcome',
                  style: TextStyle(color: Colors.black, fontSize: 50),
                )),
              ),
              const SizedBox(
                  height: 80,
                  child: Center(
                    child: Text(
                      "請選擇你所要查詢的地點 \n 或  點選直接進入！",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),

              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, //對齊方式：平均間隔
                        children: [
                      const Text('縣市'),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: ExhibitionWidgetCity(
                          cities: cities,
                        ),
                        width: 180,
                      ),
                      //todo: GetX?
                    ]),
              ),
              // Row(mainAxisAlignment: MainAxisAlignment.center, //對齊方式：平均間隔
              //     children: [
              //       const Text('地區'),
              //       const SizedBox(
              //         width: 30,
              //       ),
              //       Container(
              //         child: ExhibitionWidgetCountry(
              //           countries: TCcountries,
              //         ),
              //         width: 180,
              //       ),
              //       //todo: GetX?
              //     ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, //對齊方式：平均間隔
                  children: [
                    const Text('展區'),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: ExhibitionWidgetPlace(
                        place: place,
                      ),
                      width: 180,
                    ),
                    //todo: GetX?
                  ]),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        const Color.fromRGBO(255, 238, 216, 1), // background
                    onPrimary: Colors.black87, // foreground
                  ),
                  child: const Text(
                    'Start!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                height: 40,
                width: 200,
                margin: const EdgeInsets.all(20),
              ),
            ]),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        // const Exhitbitionpage(),
        const MyApp(),
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
