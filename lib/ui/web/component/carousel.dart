import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  final List<Widget> items;
  final double itemHeight;
  final double viewportFraction;

  MyCarousel({
    super.key,
    required this.items,
    this.itemHeight = 150,
    this.viewportFraction = 0.8
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: itemHeight,
      child: PageView.builder(
        controller: PageController(
          initialPage: items.length * 3,
          viewportFraction: viewportFraction,
        ),
        itemBuilder: (context, index) {
          final int itemIndex = index % items.length;
          return _buildCarouselItem(context, itemIndex);
        },
      ),
    );
  }

  Widget _buildCarouselItem(BuildContext context, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8), // 아이템 간 여백
      height: itemHeight, // 개별 아이템의 높이 설정
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.grey), // 테두리 스타일
        ),
        child: Center(child: items[index]), // 아이템을 가운데 배치
      ),
    );
  }
}
