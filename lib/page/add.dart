import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'General.dart';

var _color =
    TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.black);

Widget _text(String _content) {
  return Text(
    _content,
    style: _color,
  );
}

var _margin = Container(
  margin: EdgeInsets.only(bottom: 6),
);

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  late GeneralClass newGeneral;
  ImagePicker picker = ImagePicker();
  File? img;

  @override
  Widget build(BuildContext context) {
    Widget addGeneralImage = GestureDetector(
      //https://blog.logrocket.com/building-an-image-picker-in-flutter/
      onTap: () async {
        // 该方法打开 选择框 并显示 用户相册图库。若改用source: ImageSource.camera图像取摄像头
        XFile? image = await picker.pickImage(source: ImageSource.gallery);
        if (null == image) return;
        setState(() {
          img = File(image.path);
          // newGeneral.imageURl = img;
        });
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: (MediaQuery.of(context).size.width) / 3,
        color: Colors.grey,
        child: Center(
          child: Text(
            '+',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('暂不可用'), //新增-武将增强
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _text("武将列表图片"),
          _margin,
          img != null ? Image.file(img!, fit: BoxFit.cover) : addGeneralImage,
          _margin,
          _text("武将所属势力"),
          _margin,
          _text("武将名称"),
          _text("武将称号"),
          _text("武将详情图片"),
          _text("武将技能"),
        ],
      ),
    );
  }
}
