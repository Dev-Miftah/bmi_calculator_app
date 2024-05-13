import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  double? size;
  Color? color;

  CustomIconButton({
    super.key, required this.onTap, required this.icon, this.size, this.color
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon,
      size: size,
        color: color,
      ),
    );
  }
}