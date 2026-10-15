import 'package:flutter/material.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  static const _teal = Color(0xFF4A9FA5);

  static const _chips = [
    'All',
    'Bible In a Year',
    'Dailies',
    'Minutes',
    'November',
  ];

  static const _items = <_Course>[
    _Course('The Sleep Hour', 'Ashna Mukherjee', '3 Sessions',
        Color(0xFFF2994A), Icons.cloud_outlined),
    _Course('Easy on the Mission', 'Peter Mach', '5 minutes',
        Color(0xFFF0C34E), Icons.nightlight_outlined),
    _Course('Relax with Me', 'Amanda James', '3 Sessions',
        Color(0xFF4A7BE0), Icons.wb_sunny_outlined),
    _Course('Sun and Energy', 'Micheal Hiu', '5 minutes',
        _teal, Icons.air),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Meditate',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        children: [
          SizedBox(
            height: 34,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: _chips.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (_, i) => Chip(
                label: Text(
                  _chips[i],
                  style: TextStyle(
                    fontSize: 12,
                    color: i == 0 ? Colors.white : _teal,
                  ),
                ),
                backgroundColor:
                    i == 0 ? _teal : const Color(0xFFE3F4F3),
                side: BorderSide.none,
                shape: const StadiumBorder(),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: const Color(0xFFF0C34E),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.wb_sunny, size: 80, color: Colors.white70),
          ),
          const SizedBox(height: 8),
          const Text(
            'A Song of Moon',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 2),
          const Text(
            'Start with the basics',
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          const SizedBox(height: 6),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border, size: 14),
                  SizedBox(width: 4),
                  Text('9 Sessions', style: TextStyle(fontSize: 10)),
                ],
              ),
              Row(
                children: [
                  Text('Start', style: TextStyle(fontSize: 10)),
                  Icon(Icons.chevron_right, size: 14),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              mainAxisExtent: 190,
            ),
            itemBuilder: (_, i) => _CourseCard(course: _items[i]),
          ),
        ],
      ),
    );
  }
}

class _Course {
  final String title;
  final String author;
  final String meta;
  final Color color;
  final IconData icon;

  const _Course(this.title, this.author, this.meta, this.color, this.icon);
}

class _CourseCard extends StatelessWidget {
  final _Course course;

  const _CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: course.color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(course.icon, size: 44, color: Colors.white70),
        ),
        const SizedBox(height: 8),
        Text(
          course.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 2),
        Text(
          course.author,
          style: const TextStyle(fontSize: 10, color: Colors.grey),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.favorite_border, size: 12),
                const SizedBox(width: 3),
                Text(course.meta, style: const TextStyle(fontSize: 9)),
              ],
            ),
            const Row(
              children: [
                Text('Start', style: TextStyle(fontSize: 9)),
                Icon(Icons.chevron_right, size: 12),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
