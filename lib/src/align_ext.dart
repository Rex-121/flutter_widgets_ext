import 'package:flutter/material.dart';

extension AlignmentExt on Widget {
  // 对齐
  Align align({Alignment by, Key key}) => Align(
        alignment: by,
        key: key,
        child: this,
      );

  // 中心
  Center centerized() => Center(child: this);
}

extension Sized on Widget {
  Widget sized({Size to, Key key}) {
    if (to == null) return this;
    return SizedBox(key: key, width: to.width, height: to.height, child: this,);
  }
}

extension Containered on Widget {
  Widget inContainer({Key key, Decoration decoration, Color color}) {
    return Container(
      key: key,
      decoration: decoration,
      color: color,
      child: this,
    );
  }
}

extension PositionExt on Widget {
  Padding paddingBy({EdgeInsetsGeometry padding, Key key}) {
    return Padding(
      key: key,
      padding: padding,
      child: this,
    );
  }

  Positioned positionedBy({
    double left,
    double top,
    double right,
    double bottom,
    double width,
    double height,
  }) {
    return Positioned(
        left: left,
        top: top,
        right: right,
        bottom: bottom,
        width: width,
        height: height,
        child: this);
  }
}
