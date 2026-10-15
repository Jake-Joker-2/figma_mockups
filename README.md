# Макеты из Figma во Flutter

Практическая работа: повторение макетов из Figma для изучения основных элементов интерфейса Flutter.

## Экраны
| Экран | Сложность |
|---|---|
| Welcome | простой |
| Mind Deep Relax | простой |
| Meditate | средний |
| Task manager | сложный |
| Secrets of Atlantis | сложный |

## Запуск
```
flutter pub get
flutter run -d chrome
```
или F5 в VS Code (конфигурации лежат в `.vscode/launch.json`).

## Структура
```
lib/
  main.dart               главное меню
  screens/                экраны-макеты
  widgets/avatar_stack.dart   переиспользуемый виджет аватарок
assets/                   картинки из Figma
```
