import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  const CenteredView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      constraints: const BoxConstraints(
        maxWidth: 600,
        maxHeight: 900,
      ),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: 1.5, color: Colors.grey),
          bottom: BorderSide(width: 1.5, color: Colors.grey),
          right: BorderSide(width: 1.5, color: Colors.grey),
        ),
      ),
      child: child,
    );
  }
}
