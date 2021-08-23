import 'package:example1/NavigationWidget.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> _animation; 

  @override
  void initState() {
    super.initState();
    // vsync 垂直动态演示
    _animationController = AnimationController(vsync: this , duration: Duration(milliseconds: 2700));
    // (Tween 补间动画) 实例化一个补间类动画的实例，明确需要变换的区间大小和作用的controller对象
    _animation = Tween(begin: 0.0 , end: 1.0 ).animate(_animationController);

    _animation.addStatusListener((status){
      // 如果动画结束
      if(status == AnimationStatus.completed ){
        // 跳转到主页并清除启动页的动画
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => NavigationWidget() ), 
          (route) => false
        );
      }
    });
  // 播放动画
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        'images/ui/God.jpg' , 
        fit:BoxFit.cover , 
      ) ,
    );
  }
}