
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageComponent extends StatefulWidget {
  const ImageComponent({super.key, required this.images, this.size});
  final String images;
  final double? size;

  @override
  State<ImageComponent> createState() => _ImageComponentState();
}

class _ImageComponentState extends State<ImageComponent> {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset("assets/icons/${widget.images}.svg", width: widget.size?? 20, height: widget.size?? 20);
  }
}
