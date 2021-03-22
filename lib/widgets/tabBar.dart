import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/models.dart';

typedef PageFunction = void Function(int x);

int _pageNumber;
PageFunction _animate;

const List<String> _tabsNames = [
  MyIcons.home_icon,
  MyIcons.friends_icon,
  MyIcons.play_video_icon,
  MyIcons.shop_icon,
  MyIcons.notification_icon,
  MyIcons.menu_icon,
];

buildTabBar(int pageNumber, PageFunction animate, BuildContext context) {
  _pageNumber = pageNumber;
  _animate = animate;

  return Container(
    color: Theme.of(context).primaryColor,
    child: _buildTabBar(context),
  );
}

Widget _buildTabBar(BuildContext context) {
  Size _size = new Size(context);
  List<Widget> list = [];
  for (int i = 0; i < _tabsNames.length; i++) {
    list.add(_buildSingleTab(_size, _tabsNames[i], i, context));
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

Widget _buildSingleTab(
    Size _size, String icon, int index, BuildContext context) {
  return GestureDetector(
    child: Container(
      width: _size.screenWidth() / _tabsNames.length - _size.width(10),
      padding: EdgeInsets.symmetric(vertical: _size.height(10)),
      margin: EdgeInsets.symmetric(horizontal: _size.width(5)),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: _pageNumber == index
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
        color: _pageNumber == index
            ? Theme.of(context).primaryColorDark
            : Theme.of(context).primaryColorLight,
      ),
    ),
    onTap: () {
      _animate(index);
    },
  );
}
