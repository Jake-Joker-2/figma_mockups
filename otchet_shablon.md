# Отчёт по практической работе

**Тема:** Повторение макетов проектов из Figma в приложении Flutter
**Студент:** Медведев Евгений, группа Т-11-1-25
**Ссылка на репозиторий:** https://github.com/ЛОГИН/РЕПОЗИТОРИЙ

## 1. Цель работы
Повторить макеты из Figma во Flutter и изучить основные элементы интерфейса.

## 2. Задание
Реализовать макеты: 2 простых и 2 сложных (оценка «5»).
Ссылка на макеты: https://www.figma.com/design/neJsVnKChShgyFs39ECHf5/Untitled?node-id=1-1229

## 3. Используемые средства
Flutter, Dart, VS Code, Figma, Git/GitHub.

## 4. Ход работы

### 4.1 Макет «Welcome» (простой)
*Скриншот макета из Figma:* [вставить]
*Скриншот результата:* [вставить]

Использованные виджеты:
- `Scaffold`, `SafeArea` — каркас экрана
- `Column`, `Padding`, `SizedBox` — раскладка и отступы
- `Text` + `TextStyle` — заголовок и подзаголовок
- `ElevatedButton`, `TextButton` — кнопки авторизации
- `Image.asset` — иллюстрация

Ключевой фрагмент кода: [вставить, например кнопку `_AuthButton`]

### 4.2 Макет «Mind Deep Relax» (простой)
*Скриншоты:* [вставить]

Использованные виджеты:
- `AppBar`, `ListView` — прокручиваемый экран
- `Container` + `BoxDecoration` — скруглённая картинка
- `ElevatedButton.icon` — кнопка «Play Next Session»
- `ListTile`, `Divider` — список сессий

Ключевой фрагмент кода: [вставить]

### 4.3 Макет «Task manager» (сложный)
*Скриншоты:* [вставить]

Использованные виджеты:
- `ListView` с `scrollDirection: Axis.horizontal` — горизонтальные карточки
- `Wrap` — теги в карточке
- `Stack` + `Positioned` — аватарки внахлёст (`AvatarStack`)
- `TextDecoration.lineThrough` — зачёркнутая выполненная задача
- `BottomNavigationBar` + `StatefulWidget` — нижнее меню с переключением

Ключевой фрагмент кода: [вставить]

### 4.4 Макет «Secrets of Atlantis» (сложный)
*Скриншоты:* [вставить]

Использованные виджеты:
- `Stack`, `Positioned` — кнопка Play поверх картинки
- `LinearGradient` в `BoxDecoration` — градиентный фон
- `OutlinedButton` — кнопка «Follow»
- `Container` с `borderRadius`, `clipBehavior` — карточка ведущего
- `SingleChildScrollView` — прокрутка экрана

Ключевой фрагмент кода: [вставить]

## 5. Возникшие трудности
[Опишите, что вызвало сложности и как вы их решили.]

## 6. Вывод
[Что изучено: основные виджеты раскладки, списки, кнопки, Stack, навигация, работа с макетом Figma.]
