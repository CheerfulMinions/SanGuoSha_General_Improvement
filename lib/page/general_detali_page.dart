import 'General.dart';
import 'package:flutter/material.dart';

final _textStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

class GeneralDetailPage extends StatelessWidget {
  final GeneralClass soleItem;
  const GeneralDetailPage(this.soleItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pictureWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: _pictureWidth,
            child: Image.asset(
              soleItem.imageURl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // 图片作背景图只能使用下面这种写法, 不能使用Image.asset
              image: DecorationImage(
                image: AssetImage("images/ui/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            //技能描述板块
            child: Column(
              children: soleItem.skillName
                  .asMap()
                  .keys
                  .map((index) => Column(
                        children: [
                          Text(
                            soleItem.skillName[index].toString(),
                            style: _textStyle,
                          ),
                          Text(
                            soleItem.skillDescription[index],
                            style: _textStyle,
                          ),
                          Text('\n')
                        ],
                      ))
                  .toList(),
            ),
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}
