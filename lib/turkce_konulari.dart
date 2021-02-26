import 'package:flutter/material.dart';
import 'package:dersimiz_turkce/core/lesson.dart';
import 'package:dersimiz_turkce/core/string_items.dart';
import 'package:dersimiz_turkce/core/lesson_detail.dart';

//MARK: Eger bir sayfa yapiyorsak baslangica stetful yaparak daha rahat kodlayabilriz
class TurkishLessonView extends StatefulWidget {
  @override
  _TurkishLessonViewState createState() => _TurkishLessonViewState();
}

class _TurkishLessonViewState extends State<TurkishLessonView> {
  //MARK: Projenin string valueleri bir sinifta
  final StringItems stringItems = StringItems();

  //MARK: Projenin sinif veya dersleri bir sinif icinde
  final Lesson lesson = Lesson();
  var pembe = Colors.pink[600];
  var yesil = Color(0xFF9ec22a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          stringItems.lessonTitle,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: pembe,
      ),
      body: ListView.separated(
        itemCount: lesson.lessonSubjects.length,
        separatorBuilder: (context, index) {
          return Divider(
            height: 10,
            color: pembe,
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lesson.lessonSubjects[index]),
            onTap: () {
              _navigateDetailPage(index);
            },
          );
        },
      ),
    );
  }

  //MARK: File Private  yaparak methodu baske yerlerden erismeyi kapatiyoruz
  // MARK: index degeri dokunlan itemin indexi
  void _navigateDetailPage(int index) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          LessonDetail(lessonName: lesson.lessonSubjects[index]),
    ));
  }
}
