import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconButton extends StatelessWidget {
  final double? height, width;
  final String svgPath;
  final Color? color;
  final Function()? onTap;

  const SvgIconButton({
    super.key,
    this.height,
    this.width,
    required this.svgPath,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color,
        height: 20,
        width: 20,
        child: SvgPicture.asset(
          svgPath,
        ),
      ),
    );
  }
}
