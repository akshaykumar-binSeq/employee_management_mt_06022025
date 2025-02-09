import 'package:flutter/material.dart';

import '../../domain/core/constants.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor; // Optional background color
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? primaryColor, // Default color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color:
                    backgroundColor == null || backgroundColor == primaryColor
                        ? secondaryColor
                        : primaryColor, // Adjust text color based on background
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
