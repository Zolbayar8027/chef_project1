import 'package:chef_project1/navbar.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here
  var titleList = [
    "улаан перц",
    "Цагаан гаа",
    "шанцай",
    "Турмерик",
    "гүргэм",
    "яншуй",
    "Розмарин",
    "Нимбэг",
    "Цэцэгт байцаа",
    "Хар Шоколад",
    "Төмс",
    "Яргай загас",
    "Хушга",
    "Авакадо",
    "Сармис",
    "Шпинат",
    "Шош"

  ];

  // Description List Here
  var descList = [
    "Улаан перец нь цусны улаан эсийн бүтэц сайжруулна",
    "Цагаан гаа нь толгой хүчтэй өвдөх, ханиад томуунаас урьдчилан сэргийлдэг байна",
    "Шанцай нь ходоод гэдэсний шүлтлэг орчинг тэнцвэржүүлэх.",
    "Турмерик нь хоол боловсруулах үйл ажилгаа дэмжинэ, дархлааг дэмжинэ",
    "Гүргэмийн нь нүдний өвчнөөс урьдчилан сэргийлэхэд тустай.",
    "Яншуй нь цусыг цэвэрлэдэг нарийн ногоо юм.",
    "Розмарин нь цусны эргэлтийг сайжруулдаг ба толгойн өвдөлт намдаана",
    "Нимбэгт агуулагдах цитрус нь үрэвслийн эсрэг үйлчилгээ үзүүлнэ.",
    "хавдраас урьдчилан сэргийлэх болон хавдрыг эмчлэхэд үр дүнтэй.",
    "нунтаг какао антиоксидантаар баялаг, “муу” холестерины хэмжээг буруулж, “сайн”-ыг нь дээшлүүлнэ.",
    "нэг амтат төмсөнд хүний өдрийн хэрэгцээний витамин А агуулагдаж байдаг.",
    "150 грамм яргай загасанд хүний 1 өдрийн хэрэгцээний никотины хүчил байдаг.",
    "хушганд хүний бие махбодь өөрөөсөө ялгаруулж чаддаггүй хүчил агуулагдаж байдаг.",
    "энэ ногоо нь төрөл бүрийн амин дэм, антиоксидантууд нь арьсыг зөөлрүүлж.",
    "сармис идэхэд түүнд агуулагдаж байгаа бодис нь аллицин үүсгэж нянгийн эсрэг үйлчилгээ үзүүлнэ.",
    "хорт хавдрын эсрэг тэмцэхэд хамгийн их үр дүнтэй ногоонд тооцогдсон байна.",
    "шошонд агуулагдах эрдэс бодис, амин дэмүүд нь хүний биед хурдан шимэгдэх тул хүнд өвчний дараа хурдан тэнхэрнэ"
  ];

  // Image Name List Here
  var imgList = [
    "assets/images/red.jpg",
    "assets/images/tsagaan.jpeg",
    "assets/images/shan.jpg",
    "assets/images/tur.jpg",
    "assets/images/gurgem.jpg",
    "assets/images/ynshuu.jpg",
    "assets/images/roz.jpg",
    "assets/images/lemon.jpg",
    "assets/images/procli.jpg",
    "assets/images/dark.jpg",
    "assets/images/potato.jpg",
    "assets/images/zagas.jpg",
    "assets/images/nut.jpg",
    "assets/images/avakoda.jpg",
    "assets/images/garlic.png",
    "assets/images/spinach.jpg",
    "assets/images/beans.jpg"

  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(


        title: Text("Амтлагч",style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'DancingScript',
        ),
        ),
        flexibleSpace: Image(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        actions: <Widget>[

        ],
      ),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(


            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            descList[index],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}



