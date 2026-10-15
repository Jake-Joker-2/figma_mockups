import 'package:flutter/material.dart';

/// Аватарки внахлёст + кружок с количеством ("+10", "3+").
class AvatarStack extends StatelessWidget {
  final int count;
  final String extra;
  final double size;
  final Color borderColor;

  const AvatarStack({
    super.key,
    this.count = 3,
    this.extra = '',
    this.size = 32,
    this.borderColor = Colors.white,
  });

  static const _palette = [
    Color(0xFF6C5CE7),
    Color(0xFF00B894),
    Color(0xFFE17055),
    Color(0xFF0984E3),
    Color(0xFFFD79A8),
  ];

  Widget _circle(Color color, Widget child) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final step = size * 0.65;
    final hasExtra = extra.isNotEmpty;
    final total = count + (hasExtra ? 1 : 0);

    return SizedBox(
      height: size,
      width: step * (total - 1) + size,
      child: Stack(
        children: [
          for (var i = 0; i < count; i++)
            Positioned(
              left: i * step,
              child: _circle(
                _palette[i % _palette.length],
                Icon(Icons.person, size: size * 0.6, color: Colors.white),
              ),
            ),
          if (hasExtra)
            Positioned(
              left: count * step,
              child: _circle(
                const Color(0xFFF2994A),
                Text(
                  extra,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size * 0.34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
