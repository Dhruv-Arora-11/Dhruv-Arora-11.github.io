import 'package:flutter/material.dart';

class BudgeOutAnimation extends StatefulWidget {
  final Widget child;

  const BudgeOutAnimation({super.key, required this.child});

  @override
  State<BudgeOutAnimation> createState() => _BudgeOutAnimationState();
}

class _BudgeOutAnimationState extends State<BudgeOutAnimation> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Define transformations for hover and normal states
    final hoveredTransform = Matrix4.identity()..translate(0.0, -15.0, 40); // Move up by 15 pixels
final transform = isHovered ? hoveredTransform : Matrix4.identity(); // No transformation

    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        transform: transform,
        child: widget.child,
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
