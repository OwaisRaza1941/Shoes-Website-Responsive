import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const HoverTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<HoverTextButton> createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(
          widget.text,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: _isHovered ? const Color.fromARGB(255, 255, 27, 141) : Colors.black,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
