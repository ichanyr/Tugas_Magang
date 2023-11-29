import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RowCustomWidget extends StatefulWidget {
  final int pageCount;
  final int currentIndex;
  final VoidCallback onSkipPressed;

  const RowCustomWidget({
    Key? key,
    required this.pageCount,
    required this.currentIndex,
    required this.onSkipPressed,
  }) : super(key: key);

  @override
  _RowCustomWidgetState createState() => _RowCustomWidgetState();
}

class _RowCustomWidgetState extends State<RowCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedSmoothIndicator(
          activeIndex: widget.currentIndex,
          count: widget.pageCount,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.blue,
            dotHeight: 10,
            dotWidth: 10,
          ),
        ),
        TextButton(
          onPressed: () {
            widget.onSkipPressed();
          },
          child: Text(
            'Lewati',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
