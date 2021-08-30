import 'package:flutter/material.dart';

extension AlignmentExt on Widget {
  // 对齐
  Align align({Alignment by, Key key}) => Align(
        alignment: by,
        key: key,
        child: this,
      );

  // 中心
  Center centerized({Key key}) => Center(key: key, child: this);
}

extension Sized on Widget {
  Widget sized({Size to, Key key}) {
    if (to == null) return this;
    return SizedBox(
      key: key,
      width: to.width,
      height: to.height,
      child: this,
    );
  }
}

extension Containered on Widget {
  Widget inContainer(
      {Key key,
      Decoration decoration,
      Color color,
      double weight,
      double height}) {
    return Container(
      key: key,
      width: weight,
      height: height,
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

extension FlexExt on Widget {
  Expanded expanded({@required int byFlex, Key key}) {
    return Expanded(key: key, flex: byFlex, child: this);
  }
}
