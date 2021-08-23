import 'package:flutter/material.dart';

var _color =
    TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.black);

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新增-武将增强'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Text(
            "武将列表图片",
            style: _color,
          ),
          Text(
            "武将所属势力",
            style: _color,
          ),
          Text(
            "武将名称",
            style: _color,
          ),
          Text(
            "武将称号",
            style: _color,
          ),
          Text(
            "武将详情图片",
            style: _color,
          ),
          Text(
            "武将技能",
            style: _color,
          ),
        ],
      ),
    );
    // return Container(child: Text('Home'),);
  }
}
