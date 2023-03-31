import 'package:flutter/material.dart';

class ScrollCollapseWidget extends StatefulWidget {
  final Widget collapsibleChild;
  final Widget scrollableChild;
  final Widget titleWidget;
  const ScrollCollapseWidget(
      {required this.collapsibleChild,
      required this.scrollableChild,
      required this.titleWidget,
      Key? key})
      : super(key: key);

  @override
  State<ScrollCollapseWidget> createState() => _ScrollCollapseWidgetState();
}

class _ScrollCollapseWidgetState extends State<ScrollCollapseWidget> {
  bool isHalfCollapsed = false;
  bool isFullCollapsed = false;
  ScrollController? _controller;

  void _scrollListener() {
    // if (_controller!.offset >= _controller!.position.maxScrollExtent) {
    //   isFullCollapsed = true;
    // } else {
    //   isFullCollapsed = false;
    // }
    if (_controller!.offset > (_controller!.position.maxScrollExtent / 2) - 2 &&
        !_controller!.position.outOfRange) {
      isHalfCollapsed = true;
    } else {
      isHalfCollapsed = false;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller?.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _controller,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          floating: true,
          expandedHeight: MediaQuery.of(context).size.height * .06,
          pinned: true,
          toolbarHeight: 0,
          collapsedHeight: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: FlexibleSpaceBar(
            background: widget.collapsibleChild,
            title: !isHalfCollapsed
                ? PreferredSize(
                    preferredSize: const Size.fromHeight(0),
                    child: widget.titleWidget)
                : null,
            collapseMode: CollapseMode.parallax,
            titlePadding: const EdgeInsets.all(0),
          ),
        ),
      ],
      body: widget.scrollableChild,
      physics: const ClampingScrollPhysics(),
    );
  }
}
