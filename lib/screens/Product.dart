import 'package:flutter/material.dart';

class Product {
  final String image, title, description, price;
  final int  size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Бууз",
      price: "1 цаг 20 минут",
      size: 12,
      description: buuzText,
      image: "assets/buuz.png",
      color: Colors.green[50]),
  Product(
      id: 2,
      title: "Банштай цай",
      price: "40 минут",
      size: 8,
      description: banshtaitsaiText,
      image: "assets/tsa.png",
      color: Colors.green[50]),
  Product(
      id: 3,
      title: "Гурилтай шөл",
      price: "35 минут",
      size: 10,
      description: guriltaishulText,
      image: "assets/shul.png",
      color: Colors.green[50]),
  Product(
      id: 4,
      title: "Цуйван",
      price: "40 минут",
      size: 11,
      description: tsuivanText,
      image: "assets/tsu.png",
      color: Colors.green[50]),
  Product(
      id: 5,
      title: "Гүзээний салад",
      price: "20 минут",
      size: 12,
      description: guzeeniisaladText,
      image: "assets/guz.png",
      color: Colors.green[50]),
  Product(
    id: 6,
    title: "Шарсан банш",
    price: "1 цаг",
    size: 12,
    description: sharsanbanshText,
    image: "assets/sharsan.png",
    color: Colors.green[50],
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting  industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
String buuzText = "Хонь болон үхрийн татсан мах 300гр\n Гурил 150 гр\n Сонгино 1 ш ус, давс бага зэрэг Гурилаа устай  хольж  зуурна\n Зуурсан гурилаа жижиг хэсгүүдэд  хуваагаад, элдүүрээр элдэж хавтгайлна.Элдсэн  гурилан дээрээ татсан мах,  сонгино хольж,  амталсныгаа  тавин чимхэнэ. Чимхэхдээ ихэнхдээ  дугуй  хэлбэртэй болгох  бөгөөд цэцгэн бууз   хонин  бууз  гэх мэт  чимхэлт бий. Жигнүүртээ   ус  хийн  буцалмагц дээр нь буузаа тавьж  15-20 минут жигнэнэ.";
String guriltaishulText = "Мах -75 гр \n Хэрчсэн гурил - 70 гр\n Шар лууван – 13 гр,Сонгино - 24 гр\n Өөх тос – 6 гр, Шөл – 450 гр\n Махыг нарийн  гонзгой    хэрчинэ. Гурилаа    хатуувтар  зуурч  нимгэн   элдээд  хайрч   нарийн  хэрчинэ. Шар  лууван,  сонгиныг  жижиг  хэрчиж  тосонд  хуурна. Яс  махны  шөл  гаргаж  түүндээ  хөшиглөсөн  махаа  хийж  15-20  минут  чанаад  дээр нь  хэрчсэн  гурил,  хуурсан  лууван,  сонгиноо  нэмж,  давс, повоороор  амтлан   5-7  минут  чанаж   бэлэн  болгоно. ";
String tsuivanText = "Гурил, Мах\n Лууван, Манжин, Чинжүү\n 1.Мах ногоогоо нарийхан нарийхан хэрчээд хуурна. Гурил зуурч элдээд наранцэцэгийн тосоор тослоод дээр дээрээс нь давхарлан тавиж хэрчиж бэлдэнэ. Хуурсан мах ногоон дээрээ ус хийж буцалгана. Хэрчсэн гурилаа дээрээс нь хийж эхлээд 5 мин ширүүн гал дээр дараа нь 5 мин дунд зэргийн гал дээр дараа нь ширүүн гал дээр 2 мин-д хэртэй жигнээд гаргана.";
String huushuurText = "Гүзээ 600 гр\n Сүүл 200 гр\n Сонгино 1 ш\n Гурил 350 гр\n Ургамал тос 500 гр\n Давс, повоор, ус бага зэрэг\n 1. Гүзээг сайн цэвэрлэж угаагаад дутуу чанаж хөргөөд машиндана. Сүүл буюу гадар өөхийг жижиг хөшиглөсөн сонгино, давс, повоор, жаахан ус нэмж амт оруулан шүүслээд шанзаа бэлтгэнэ.\n 2. Шанзнаасаа таслан авч хуушуурын зуурмагт боож хавтгайлаад тостой хайруул буюу их тосонд чанаж болгоно.";
String guzeeniisaladText = "-Үхрийн гүзээ\n -Ногоон огурцы эсвэл дарсан огурцы\n –Лууван -Улаан сонгино эсвэл ногоон сонгино\n -Гүнжидийн тос, Гүнжидийн үр\n -Соя соус\n -Нунтаг хар Перц\n Үхрийн гүзээгээ сайтар угааж цэвэрлээд битүү чанагчид 30 минут (битүү чанагч байхгүй бол зөөлөн гал дээр таглаатай саванд 1 цаг 30 минут чанана) болгоод, хөргөөд, нарийн савхан хэлбэртэй хэрчинэ. ";
String banshtaitsaiText = " Цайны ус, цайны идээ\n сүү, сүүлний өөх, борц\n шар эсвэл цагаан будаа\n хатаасан хавирга, давс \n Юун түрүүнд хар цай чанаж дараа нь сүлээд дахин буцалгана. Ингээд цайгаа өөр саванд шүүж юүлээд тогоог сайтар цэвэрлэж халаана. Шар эсвэл цагаан будааг сүүлний өөхтэй хамт тогоонд хийж хуураад дээрээс нь шүүсэн цайгаа хийнэ. Үүн дээрээ нимгэн хөшиглөсөн сүүл, годгор борц, бог малын хатааж хуршаасан хавирга, эсвэл гургалдай нэмж хужир, давсаар амт тохируулан нэг удаа оргитол буцалгана.";
String sharsanbanshText = "аяга үхрийн мах жижиглэсэн\n бууцай 4-5 ширхэг бор мөөг\n хагас сонгино жижиглэсэн 3 хумс сармис\n давс, элсэн чихэр, гүнжидийн тос\n ургамлын тос, загасны соус\n өндөг ногоон сонгино зориулалтын гурил Дугуйлж хавтгайлсан гурил  дээрээ бэлтгэсэн хольцоо тавина. Хурууныхаа ндгөөр гурилын захаа бага зэрэг усаар норгоно. Гурилынхаа хоёр талыг нийлүүлж чимхэнэ. Халаасан тосондоо баншнуудаа шарна. Галаа багасгаж хайруулын тавгаа таглан орхино. Хэдэн минутын дараа баншнуудаа эргүүлнэ. ";
