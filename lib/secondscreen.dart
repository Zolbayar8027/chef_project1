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
    "Розмарин"
  ];

  // Description List Here
  var descList = [
    "Улаан перец нь цусны улаан эсийн бүтэц сайжруулна",
    "Цагаан гаа нь толгой хүчтэй өвдөх, ханиад томуунаас урьдчилан сэргийлдэг байна",
    "Шанцай нь ходоод гэдэсний шүлтлэг орчинг тэнцвэржүүлэх.",
    "Турмерик нь хоол боловсруулах үйл ажилгаа дэмжинэ, дархлааг дэмжинэ",
    "Гүргэмийн нь нүдний өвчнөөс урьдчилан сэргийлэхэд тустай.",
    "Яншуй нь цусыг цэвэрлэдэг нарийн ногоо юм.",
    "Розмарин нь цусны эргэлтийг сайжруулдаг ба толгойн өвдөлт намдаана"
  ];

  // Image Name List Here
  var imgList = [
    "assets/images/red.jpg",
    "assets/images/tsagaan.jpeg",
    "assets/images/shan.jpg",
    "assets/images/tur.jpg",
    "assets/images/gurgem.jpg",
    "assets/images/ynshuu.jpg",
    "assets/images/roz.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(

        leading:IconButton(icon: Icon(Icons.menu), onPressed: () {
        }),
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
          IconButton(icon: Icon(Icons.search), onPressed: () {

          }),
        ],
      ),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(context, imgList[index], titleList[index], descList[index]);
            },
            // Card Which Holds Layout Of ListView Item
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

// This is a block of Model Dialog
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
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
                  //width: 300,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
