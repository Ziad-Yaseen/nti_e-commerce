import 'package:flutter/material.dart';

class CustomHeaderAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomHeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF2F5F8),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + 16.0,
        left: 20.0,
        right: 20.0,
        bottom: 16.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Home Screen',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Explore our products',
            style: TextStyle(fontSize: 16, color: Color(0xFF475569)),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for products...',
              hintStyle: const TextStyle(
                color: Color(0xFF64748B),
                fontSize: 16,
              ),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF334155)),
              filled: true,
              fillColor: const Color(0xFFE2E8F0),
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(180);
}
