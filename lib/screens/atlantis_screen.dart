import 'package:flutter/material.dart';

import '../widgets/avatar_stack.dart';

class AtlantisScreen extends StatelessWidget {
  const AtlantisScreen({super.key});

  static const _orange = Color(0xFFF2994A);
  static const _purple = Color(0xFF3B2A8C);
  static const _purpleDark = Color(0xFF2A1C6B);
  static const _yellow = Color(0xFFF2DD3E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF7F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _hero(context),
            const SizedBox(height: 12),
            const Text(
              'Secrets of Atlantis',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: _orange,
                side: const BorderSide(color: _orange),
                padding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Follow'),
            ),
            const SizedBox(height: 18),
            _hostCard(),
            const SizedBox(height: 18),
            _inviteBanner(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _hero(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 300,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF3FB6F2), Color(0xFF6C5CE7)],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
              ),
              // Иллюстрация-заглушка: заменить на Image.asset
              child: const Icon(Icons.water, size: 110, color: Colors.white54),
            ),
          ),
          Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 66,
              height: 66,
              decoration: const BoxDecoration(
                color: _orange,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.play_arrow,
                  size: 40, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _hostCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: _purple,
        borderRadius: BorderRadius.circular(24),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xFFE17055),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Codin',
                            style:
                                TextStyle(color: Colors.white, fontSize: 13)),
                        const SizedBox(height: 2),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: _purpleDark,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text('Host',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 11)),
                        ),
                      ],
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        'The Secrets of Atlantis podcast is designed for all '
                        'fantasy enthusiasts, everything from debunking '
                        'underwat... see more',
                        style: TextStyle(
                            color: Colors.white70, fontSize: 11, height: 1.4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    _badge('4.8 ★ (10)'),
                    const SizedBox(width: 8),
                    _badge('Fantasy'),
                    const Spacer(),
                    const Icon(Icons.notifications_none, color: Colors.white),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: _purpleDark,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: const Row(
              children: [
                AvatarStack(
                  count: 4,
                  extra: '+10',
                  size: 34,
                  borderColor: _purpleDark,
                ),
                Spacer(),
                Icon(Icons.sensors, color: _orange, size: 16),
                SizedBox(width: 4),
                Text('Live',
                    style: TextStyle(
                        color: _orange, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _badge(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: _purpleDark,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _inviteBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _yellow,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Row(
        children: [
          Icon(Icons.emoji_emotions, size: 60, color: Color(0xFFE17055)),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Invite your\nfriends to join',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          Icon(Icons.share, size: 20),
        ],
      ),
    );
  }
}
