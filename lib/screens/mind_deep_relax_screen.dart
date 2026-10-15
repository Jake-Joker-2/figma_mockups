import 'package:flutter/material.dart';

class MindDeepRelaxScreen extends StatelessWidget {
  const MindDeepRelaxScreen({super.key});

  static const _teal = Color(0xFF4A9FA5);
  static const _yellow = Color(0xFFF0C34E);

  @override
  Widget build(BuildContext context) {
    final sessions = <(String, String, Color)>[
      ('Sweet Memories', 'December 29 Pre-Launch', const Color(0xFF4A7BE0)),
      ('A Day Dream', 'December 29 Pre-Launch', _teal),
      ('Mind Explore', 'December 29 Pre-Launch', const Color(0xFFF2994A)),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        children: [
          // Иллюстрация-заглушка: заменить на Image.asset
          Container(
            height: 190,
            decoration: BoxDecoration(
              color: _yellow,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.landscape, size: 90, color: Colors.white70),
          ),
          const SizedBox(height: 12),
          const Text(
            'Peter Mach',
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          const SizedBox(height: 4),
          const Text(
            'Mind Deep Relax',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          const Text(
            'Join the Community as we prepare over 33 days to relax and '
            'feel joy with the mind and happines session across the World.',
            style: TextStyle(fontSize: 13, height: 1.4, color: Colors.black87),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 46,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow_outlined, size: 20),
              label: const Text('Play Next Session'),
              style: ElevatedButton.styleFrom(
                backgroundColor: _teal,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          for (final s in sessions) ...[
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: s.$3,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.play_arrow_outlined,
                    color: Colors.white, size: 20),
              ),
              title: Text(
                s.$1,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                s.$2,
                style: const TextStyle(fontSize: 11, color: Colors.grey),
              ),
              trailing: const Icon(Icons.more_horiz, color: Colors.grey),
            ),
            const Divider(height: 1),
          ],
        ],
      ),
    );
  }
}
