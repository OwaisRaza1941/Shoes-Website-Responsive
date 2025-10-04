import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const HoverButton({super.key, required this.text, required this.onPressed});

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          border: isHovered
              ? Border.all(color: Colors.black, width: 1)
              : Border.all(color: Colors.transparent),
          color: isHovered ? Colors.white.withOpacity(0.1) : Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: widget.onPressed,
          style: TextButton.styleFrom(
            overlayColor: Colors.transparent, // 👈 removes blur click color
            foregroundColor: isHovered
                ? Colors.black
                : Colors.white, // 👈 text color change
          ),
          child: Text(widget.text, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
