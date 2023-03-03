import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hover extends StatefulWidget {
  const Hover({super.key, required this.builder});

  final Widget Function(bool isHovered) builder;

  @override
  State<Hover> createState() => _HoverState();
}

class _HoverState extends State<Hover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(0, -10, 0);
    final transform = isHovered ? hovered : Matrix4.identity();

    return InkWell(
      onHover: (_) => onEntered(true),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
