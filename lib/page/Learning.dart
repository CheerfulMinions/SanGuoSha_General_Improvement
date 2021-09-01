import 'package:flutter/material.dart';

var _style = TextStyle(
  fontSize: 27,
);

class ContentDetail {
  String text;
  bool ifPressed = false;
  int maxline = 1;

  ContentDetail(this.text);
}

final _content1 =
    "1.三国杀阶段顺序: 准备、判定、摸牌、出牌、弃牌、结束。(回合开始阶段 = 准备阶段, 准备阶段是新版描述,  回合开始阶段是 旧版描述)";
final _content2 = "2.三国杀主公武将: 刘备 孙权 曹操 张角 袁绍 曹丕 董卓 孙策 曹睿 刘禅 孙亮 刘谌 孙休 孙皓 袁术";

class Learning extends StatefulWidget {
  @override
  _LearningState createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  List<ContentDetail> contentList = [];
  @override
  void initState() {
    contentList
      ..add(
        ContentDetail(_content1),
      )
      ..add(ContentDetail(_content2));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget _block(ContentDetail e) {
      return Container(
        margin: EdgeInsets.only(bottom: 9),
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            setState(() {
              if (e.ifPressed == false) {
                e.maxline = 9999;
                e.ifPressed = true;
              } else {
                e.maxline = 1;
                e.ifPressed = false;
              }
            });
          },
          child: Text(
            e.text,
            overflow: TextOverflow.ellipsis,
            maxLines: e.maxline,
            style: _style,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('必备知识'),
        centerTitle: true,
      ),
      body: ListView(
        children: contentList.map((e) => _block(e)).toList(),
      ),
    );
  }
}
