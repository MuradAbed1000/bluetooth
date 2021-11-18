import 'package:flutter/material.dart';

import 'widgets/category.dart';

class normalscreen extends StatefulWidget {
  final double? height;
  final double? borderWidth;

  normalscreen({Key? key, this.height = 60, this.borderWidth = 3})
      : super(key: key);

  @override
  State<normalscreen> createState() => _normalscreenState();
}

class _normalscreenState extends State<normalscreen> {
  late double _maxWidth;
  late double _handleSize;
  double _dragValue = 0;
  double _dragWidth = 0;
  bool _confirmed = false;
  @override
  Widget build(BuildContext context) {
    _handleSize = (widget.height! - (widget.borderWidth! * 2));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.0,
        title: Image.asset(
          'assets/1.png',
          width: 240,
        ),
      ),
      body: ListView(
        children: [
          Container(child: Category()),
          Image.asset('assets/2.png'),
          SizedBox(
            height: widget.height,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: LayoutBuilder(
              builder: (context, constraint) {
                _maxWidth = constraint.maxWidth;
                return Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                        color: Colors.black, width: widget.borderWidth!),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: Text(_confirmed ? 'confirmed' : 'Swipe to open',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: _confirmed
                                        ? Colors.black54
                                        : Colors.white)),
                      ),
                      AnimatedContainer(
                        duration: Duration(microseconds: 100),
                        width: _dragWidth <= _handleSize
                            ? _handleSize
                            : _dragWidth,
                        child: Row(
                          children: [
                            Expanded(child: SizedBox.shrink()),
                            GestureDetector(
                              onVerticalDragUpdate: _onDrageUpdate,
                              onVerticalDragEnd: _onDrageEnd,
                              child: Container(
                                width: _handleSize,
                                height: _handleSize,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  color: Colors.black,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _onDrageUpdate(DragUpdateDetails details) {
    setState(() {
      _dragValue = (details.globalPosition.dx) / _maxWidth;
      _dragWidth = _maxWidth * _dragValue;
    });
  }

  void _onDrageEnd(DragEndDetails details) {
    if (_dragValue > .9) {
      _dragValue = 1;
    } else {
      _dragValue = 0;
    }
    setState(() {
      _dragWidth = _maxWidth * _dragValue;
      _confirmed = _dragWidth == 1;
    });
  }
}
