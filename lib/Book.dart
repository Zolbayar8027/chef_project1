//import 'package:ebooklibrary/MyClipper.dart';
import 'package:chef_project1/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(


        title: Text("Хоолны дэглэм",style: TextStyle(
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              //clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 40),
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xfff0dfd8),
                      Color(0xfff0dfd8),
                      Color(0xfff0dfd8),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Text(
                          "10 дүрэм",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),

                      ],
                    ),
                    Image.asset(
                      'assets/3333.jpg',
                      width: 250,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(height: 10.0),

                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    " Эрүүл хооллолт нь хүнийг эрүүл байлгахын зэрэгцээ амжилт, сэтгэл санаанд сайнаар нөлөөлнө. ХБНГУ-ын Хоол хүнсний нийгэмлэг (ГХХН)-ээс шинжлэх ухааны сүүлийн үеийн нээлт дээр тулгуурлан эрүүл чанартай хооллолтын 4 дүрэм гаргажээ.\n 1. Олон төрлийн зүйл идэх Янз бүрийн хоол хүнсний зүйлийг сольж хэрэглэх нь биемахбод шаардлагатай бодисуудыг зохих хэмжээгээр авахад хамгийн их тустай байдаг. Жишээлбэл, уураг, амин дэм, нүүрс ус. Тиймээс ГХХН-ээс өдөр бүр хоол хүнсэндээ талх, үр тариа буюу үр тариан бүтээгдэхүүн, ахиухан төмс, хүнсний ногоо, буурцагт ногоо, самар, жимс, сүү ба сүүн бүтээгдэхүүнийг тогтмол хэрэглэж байхыг зөвлөж байна. Мөн мах, загас, өндөг, өөх тосыг зохих хэмжээгээр хэрэглэж байх шаардлагатай ажээ.\n 2. Үр тариан бүтээгдэхүүн өдөрт хэд хэдэн удаа мөн ахиухан төмс Талх, цагаан будаа, хэрчсэн гурил-гоймон, овъёосны нэвс (Haferflocken) гэх мэт үр тариан бүтээгдэхүүн болон төмс нь эрүүл чанартай хоол хүнсний суурь болно. Эдгээр нь ихээхэн цардуул, өндөр чанарын уураг, бага өөх тос, их хэмжээний амин дэм ба эрдэс бодис, хоёрдогч ургамлын бодис, “дүүргэгч” бодис (Ballaststoffe)-ыг бие махбодод өгдөг. (манайхны арвайн гурил нэгэн чухал хүнсний бүтээгдэхүүн бололтой) Бүтэн үр тариа бүхий бүтээгдэхүүнүүд хамгийн тохиромжтой (өндөр молекулын) нүүрс ус агуулдаг. Түүнээс гадна энэ хүнсний бүтээгдэхүүн нь дүүргэгч бодисоор баялаг, өег, цагаан гурилаар хийсэн бүтээгдэхүүнийг бодвол бие махбодод шаардлагатай шим тэжээлт бодис илүү агуулдаг.\n 3. Хүнсний ногоо, жимсийг өдөрт “5” удаа Жимс болон хүнсний ногоо нь амин дэм, эрдэс бодисоор баялаг, дүүргэгч бодис, хоёрдогч ургамлын бодис агуулахын зэрэгцээ энергийн агууламж багатай байна. Иймээс эдгээр нь бага калоритай байхын зэрэгцээ чухал хэрэгцээт бодисоор бие махбодыг хангана. Тэгэхээр та өдөр бүр наад зах нь 5 поорц хүнсний ногоо ба жимсийг болж өгвөл шинээр нь, мөн богино хугацаагаар болгож, эсвэл үндсэн хоололтын цагт, мөн завсрын хөнгөн хооллолтын үед 1 поорц жүүс хэрэглэж хэрэглэж байна уу. Энэ нь таны эрүүл мэндэд хамгийн сайнаар нөлөөлнө.\n 4. Өдөр бүр сүү, сүүн бүтээгдэхүүн,  долоо хоногт нэгээс хоёр удаа загас, мах, хиам, зохих хэмжээгээр өндөг Сүү ба сүүн бүтээгдэхүүн нь биемахбодод, тухайлбал, яс бүтэж бий болоход чухал хэрэгцээтэй кальцийг нийлүүлнэ. Иймээс өдөр бүр сүү, сүүн бүтээгдэхүүнийг сүү, тараг, бяслаг зэрэг хэлбэрээр хэрэглэнэ. Мах нь бие махбодод төмөр, эрдэс бодис, амин дэм (B1, B6, B12) өгдөг. Долоо хоногтоо хэрэглэх мах, хиам нь  600 граммаас илүүгүй байна. Мах, сүүн бүтээгдэхүүн өөх, тос багатай байвал сайн. Далайн загас бол иод нийлүүлэгч чухал бүтээгдэхүүн. Тэгэхээр иодын хэрэгцээгээ хангахын тулд долоо хоногт наад зах нь нэг удаа загас хэрэглэх хэрэгтэй. Загасанд мөн селен, омега-3-өөх тосны хүчил байдаг.\n Н.Хорлоо\n Ашигласан материал: Dr. Doris Becker,  Vollwertige Ernährung nach den 10 Regeln der Deutschen Gesellschaft für Ernährung, www.familienhandbuch.de,  www.dge-medienservice.de",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}