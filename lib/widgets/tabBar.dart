import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';

typedef PageFunction = void Function(int x);

class MyTabBar extends StatefulWidget {
  final int _pageNumber;
  final PageFunction animate;
  MyTabBar(this._pageNumber, this.animate);
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  static const tabsNames = [
    MyIcons.home_icon,
    MyIcons.friends_icon,
    MyIcons.play_video_icon,
    MyIcons.shop_icon,
    MyIcons.notification_icon,
    MyIcons.menu_icon,
  ];

  Size _size;

  @override
  void initState() {
    _size = Size(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: _buildTabBar(),
    );
  }

  Widget _buildTabBar() {
    List<Widget> list = [];
    for (int i = 0; i < tabsNames.length; i++) {
      list.add(_buildSingleTab(tabsNames[i], i));
    }
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Row(
          children: list,
        ),
        Divider(
          height: 1,
        ),
      ],
    );
  }

  Widget _buildSingleTab(String icon, int index) {
    return GestureDetector(
      child: Container(
        width: _size.screenWidth() / tabsNames.length - _size.width(10),
        padding: EdgeInsets.symmetric(vertical: _size.height(10)),
        margin: EdgeInsets.symmetric(horizontal: _size.width(5)),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: widget._pageNumber == index
                  ? Color.fromRGBO(45, 135, 254, 1)
                  : Colors.transparent,
              width: _size.height(3),
            ),
          ),
        ),
        child: SvgPicture.asset(
          icon,
          height: _size.width(25),
          width: _size.width(25),
          color: widget._pageNumber == index
              ? Color.fromRGBO(45, 135, 254, 1)
              : Color.fromRGBO(176, 179, 184, 1),
        ),
      ),
      onTap: () {
        widget.animate(index);
      },
    );
  }
}
