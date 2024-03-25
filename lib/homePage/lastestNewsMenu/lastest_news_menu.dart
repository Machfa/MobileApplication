import 'package:flutter/material.dart';
import 'package:machfa/homePage/lastestNewsMenu/lastest_news_menu_point.dart';

// ignore: must_be_immutable
class LastestNewsMenu extends StatefulWidget {
  final List<String> picItemPath;
  int currentItem;
  LastestNewsMenu(
      {super.key, required this.picItemPath, required this.currentItem});
  @override
  State<LastestNewsMenu> createState() => _LastestNewsMenuState();
}

class _LastestNewsMenuState extends State<LastestNewsMenu> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    final screenWidth = MediaQuery.of(context).size.width;
    final currentItemIndex = (_scrollController.offset / screenWidth).round();
    setState(() {
      widget.currentItem = currentItemIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
            ),
            height: (150 / 926) * screenHeight,
            width: (377 / 428) * screenWidth,
            child: ListView.builder(
              controller: _scrollController,
              addAutomaticKeepAlives: false,
              physics: const PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: widget.picItemPath.length,
              itemBuilder: (context, index) => Image.network(
                widget.picItemPath[index],
                alignment: Alignment.center,
                height: (150 / 926) * screenHeight,
                width: (377 / 428) * screenWidth,
              ),
            ),
          ),
          SizedBox(
            height: (15 / 926) * screenHeight,
          ),
          LastestNewsMenuPoint(
            itemCount: widget.picItemPath.length,
            cureentItem: widget.currentItem + 1,
          )
        ],
      ),
    );
  }
}
