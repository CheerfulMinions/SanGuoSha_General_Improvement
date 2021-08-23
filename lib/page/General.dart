import 'package:example1/general_detail.dart';
import 'package:flutter/material.dart';

import 'general_detali_page.dart';

final _textStyle = TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.bold,
);

class General extends StatelessWidget {
  final List<GeneralClass> generalList;
  const General({Key? key, this.generalList = generalDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _phoneWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '武将增强列表',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: generalList
            .map((item) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              GeneralDetailPage(item)),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 3, left: 1),
                    child: Row(
                      children: [
                        Image.asset(item.tinyImg,
                            width: _phoneWidth - 42 - 79 - 75,
                            height: 48,
                            fit: BoxFit.fill),
                        Image.asset(item.kingdom,
                            width: 42, height: 42, fit: BoxFit.cover),
                        Container(
                          width: 78,
                          child: Text(
                            item.name,
                            textAlign: TextAlign.center,
                            style: _textStyle,
                          ),
                        ),
                        Container(
                          width: 75,
                          child: Text(
                            item.title,
                          ), // textAlign : TextAlign.center
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
