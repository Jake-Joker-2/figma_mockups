import 'package:flutter/material.dart';

import 'screens/atlantis_screen.dart';
import 'screens/meditate_screen.dart';
import 'screens/mind_deep_relax_screen.dart';
import 'screens/tasks_screen.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma mockups',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF4A9FA5),
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <(String, String, Widget)>[
      ('Welcome', 'простой', const WelcomeScreen()),
      ('Mind Deep Relax', 'простой', const MindDeepRelaxScreen()),
      ('Meditate', 'средний', const MeditateScreen()),
      ('Task manager', 'сложный', const TasksScreen()),
      ('Secrets of Atlantis', 'сложный', const AtlantisScreen()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Макеты')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final item = items[i];
          return ListTile(
            title: Text(item.$1),
            subtitle: Text(item.$2),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => item.$3),
            ),
          );
        },
      ),
    );
  }
}
