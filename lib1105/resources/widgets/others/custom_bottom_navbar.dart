import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    this.onTap,
    this.icon,
    this.assetIcon = '',
    required this.isSelected,
    required this.label,
  });

  final void Function()? onTap;
  final IconData? icon;
  final String assetIcon;
  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
          width: 55,
          height: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: isSelected ? 40 : 20,
                height: isSelected ? 40 : 20,
                child: assetIcon.isNotEmpty
                    ? Image.asset(
                        assetIcon,
                        color: isSelected ? Colors.red : Colors.grey,
                      )
                    : Icon(
                        icon,
                        color: isSelected ? Colors.blue : Colors.grey,
                        size: isSelected ? 22 : 20,
                      ),
              ),
            ],
          )),
    );
  }
}
