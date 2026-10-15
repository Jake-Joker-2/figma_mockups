import 'package:flutter/material.dart';

import '../widgets/avatar_stack.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  int _index = 0;

  static const _bg = Color(0xFFF7F8FC);
  static const _accent = Color(0xFF5B67F1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          children: [
            _header(),
            const SizedBox(height: 20),
            _sectionTitle('My Weekly Tasks'),
            const SizedBox(height: 12),
            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _WeeklyCard(
                    tags: [
                      _Tag('UI/UX Design', Color(0xFFF0EAFB), Color(0xFF7B5CD6)),
                      _Tag('High', Color(0xFFFDE8E8), Color(0xFFE05555)),
                    ],
                    title: 'Create a Landing Page',
                    date: 'Mon, 12 July 2022',
                    extra: '3+',
                  ),
                  SizedBox(width: 12),
                  _WeeklyCard(
                    tags: [
                      _Tag('Development', Color(0xFFFFF1E0), Color(0xFFF2994A)),
                      _Tag('Low', Color(0xFFE6F7EC), Color(0xFF27AE60)),
                    ],
                    title: 'Develop a Website',
                    date: 'Mon, 30 July 2022',
                    extra: '2+',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _sectionTitle("Today's Tasks"),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _TodayCard(
                    title: 'Design 2 App Screens',
                    subtitle: 'Crypto Wallet App',
                    date: 'Mon, 10 July 2022',
                    done: true,
                  ),
                  SizedBox(height: 12),
                  _TodayCard(
                    title: 'Design Homepage',
                    subtitle: 'Water Company Website',
                    date: 'Mon, 12 July 2022',
                    done: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) => setState(() => _index = i),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: _accent,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_outlined), label: 'Projects'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups_outlined), label: 'Members'),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          IconButton(
            onPressed: () => Navigator.maybePop(context),
            icon: const Icon(Icons.arrow_back_ios_new, size: 18),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32),
          ),
          const SizedBox(width: 4),
          const CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFF6C5CE7),
            child: Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Good Evening!',
                    style: TextStyle(fontSize: 11, color: Colors.grey)),
                Text('Dan Smith',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          _roundIcon(Icons.search),
          const SizedBox(width: 8),
          _roundIcon(Icons.notifications_none),
        ],
      ),
    );
  }

  Widget _roundIcon(IconData icon) {
    return Container(
      width: 38,
      height: 38,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 20),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700)),
                const Text('18 Tasks Pending',
                    style: TextStyle(fontSize: 11, color: Colors.grey)),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.tune, size: 20)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String text;
  final Color bg;
  final Color fg;

  const _Tag(this.text, this.bg, this.fg);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: TextStyle(fontSize: 10, color: fg)),
    );
  }
}

class _WeeklyCard extends StatelessWidget {
  final List<_Tag> tags;
  final String title;
  final String date;
  final String extra;

  const _WeeklyCard({
    required this.tags,
    required this.title,
    required this.date,
    required this.extra,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(spacing: 6, runSpacing: 4, children: tags),
          const SizedBox(height: 10),
          Text(title,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
          const Spacer(),
          AvatarStack(count: 2, extra: extra, size: 30),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.calendar_today_outlined,
                  size: 13, color: Colors.grey),
              const SizedBox(width: 6),
              Text(date,
                  style: const TextStyle(fontSize: 10, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}

class _TodayCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final bool done;

  const _TodayCard({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.done,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        decoration:
                            done ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(subtitle,
                        style:
                            const TextStyle(fontSize: 11, color: Colors.grey)),
                  ],
                ),
              ),
              if (done)
                Container(
                  width: 28,
                  height: 28,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5B67F1),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.check, size: 16, color: Colors.white),
                ),
            ],
          ),
          const Divider(height: 24),
          Row(
            children: [
              const Icon(Icons.calendar_today_outlined,
                  size: 13, color: Colors.grey),
              const SizedBox(width: 6),
              Text(date,
                  style: const TextStyle(fontSize: 10, color: Colors.grey)),
              const Spacer(),
              const AvatarStack(count: 2, extra: '1+', size: 26),
            ],
          ),
        ],
      ),
    );
  }
}
