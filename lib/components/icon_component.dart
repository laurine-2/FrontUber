import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconComponent extends StatefulWidget {
  const IconComponent({super.key, required this.icon, this.color, this.size});
  final String icon;
  final Color? color;
  final double? size;

  @override
  State<IconComponent> createState() => _IconComponentState();
}

class _IconComponentState extends State<IconComponent> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/${widget.icon}.svg", width: widget.size?? 20, height: widget.size?? 20,
        colorFilter: ColorFilter.mode(widget.color?? Colors.black, BlendMode.srcIn),

    );
  }
}
