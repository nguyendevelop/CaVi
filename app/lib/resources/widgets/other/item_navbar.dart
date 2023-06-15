import 'package:flutter/material.dart';

class ItemNavbar extends StatelessWidget {
  const ItemNavbar({
    Key? key,
    required this.isSelected,
    required this.label,
    this.assetIcon = '',
    this.onTap,
    this.icon,
  }) : super(key: key);

  final bool isSelected;
  final String label;
  final String assetIcon;
  final Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: isSelected ? 22.0 : 20.0,
              height: isSelected ? 22.0 : 20.0,
              child: assetIcon.isNotEmpty
                  ? Image.asset(
                      assetIcon,
                      color: isSelected
                          ? Colors
                              .blue // Thay thế màu này bằng màu chính xác bạn muốn sử dụng.
                          : Colors.grey,
                    )
                  : Icon(
                      icon,
                      color: isSelected
                          ? Colors
                              .blue // Thay thế màu này bằng màu chính xác bạn muốn sử dụng.
                          : Colors.grey,
                      size: isSelected ? 22.0 : 20.0,
                    ),
            ),
            const SizedBox(height: 4.0),
            Text(
              label,
              style: TextStyle(
                fontSize: 10.0,
                color: isSelected
                    ? Colors
                        .blue // Thay thế màu này bằng màu chính xác bạn muốn sử dụng.
                    : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
